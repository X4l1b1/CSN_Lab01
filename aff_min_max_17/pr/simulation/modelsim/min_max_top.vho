-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "10/13/2017 12:24:08"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	maxv_top IS
    PORT (
	Clk_Gen_i : IN std_logic;
	Clk_Main_i : IN std_logic;
	Con_25p_io : INOUT std_logic_vector(25 DOWNTO 1);
	Con_80p_io : INOUT std_logic_vector(79 DOWNTO 2);
	Mezzanine_io : INOUT std_logic_vector(20 DOWNTO 5);
	Encoder_A_i : IN std_logic;
	Encoder_B_i : IN std_logic;
	nButton_i : IN std_logic_vector(8 DOWNTO 1);
	nReset_i : IN std_logic;
	Switch_i : IN std_logic_vector(7 DOWNTO 0);
	nLed_o : OUT std_logic_vector(7 DOWNTO 0);
	Led_RGB_o : OUT std_logic_vector(2 DOWNTO 0);
	nSeven_Seg_o : OUT std_logic_vector(7 DOWNTO 0)
	);
END maxv_top;

-- Design Ports Information
-- Clk_Gen_i	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Encoder_A_i	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Encoder_B_i	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[2]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[5]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[6]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[7]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[8]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[3]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[5]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[7]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk_Main_i	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nReset_i	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nLed_o[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[1]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[5]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[6]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[7]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[2]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[2]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[3]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[5]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[6]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[7]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[1]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[2]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[3]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[4]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[5]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[6]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[7]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[8]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[9]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[10]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[11]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[12]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[13]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[14]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[15]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[16]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[17]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[18]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[19]	=>  Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[20]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[21]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[22]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[23]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[24]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[25]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[5]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[6]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[7]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[8]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[9]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[10]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[11]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[12]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[13]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[14]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[15]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[16]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[17]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[18]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[19]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[20]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[2]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[4]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[5]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[6]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[7]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[8]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[9]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[10]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[11]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[12]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[13]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[14]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[15]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[16]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[17]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[18]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[19]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[20]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[21]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[22]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[23]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[24]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[25]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[26]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[27]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[28]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[29]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[30]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[31]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[32]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[33]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[34]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[35]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[36]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[37]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[38]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[39]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[40]	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[41]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[42]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[43]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[44]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[45]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[46]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[47]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[48]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[49]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[50]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[51]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[52]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[53]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[54]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[55]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[56]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[57]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[58]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[59]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[60]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[61]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[62]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[63]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[64]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[65]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[66]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[67]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[68]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[69]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[70]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[71]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[72]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[73]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[74]	=>  Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[75]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[76]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[77]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[78]	=>  Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[79]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF maxv_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_Gen_i : std_logic;
SIGNAL ww_Clk_Main_i : std_logic;
SIGNAL ww_Encoder_A_i : std_logic;
SIGNAL ww_Encoder_B_i : std_logic;
SIGNAL ww_nButton_i : std_logic_vector(8 DOWNTO 1);
SIGNAL ww_nReset_i : std_logic;
SIGNAL ww_Switch_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nLed_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led_RGB_o : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nSeven_Seg_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \Con_80p_io[9]~7\ : std_logic;
SIGNAL \Con_80p_io[10]~8\ : std_logic;
SIGNAL \Con_80p_io[11]~9\ : std_logic;
SIGNAL \Con_80p_io[12]~10\ : std_logic;
SIGNAL \Con_80p_io[13]~11\ : std_logic;
SIGNAL \Con_80p_io[14]~12\ : std_logic;
SIGNAL \Con_80p_io[15]~13\ : std_logic;
SIGNAL \Con_80p_io[16]~14\ : std_logic;
SIGNAL \Con_80p_io[17]~15\ : std_logic;
SIGNAL \Con_80p_io[18]~16\ : std_logic;
SIGNAL \Con_80p_io[19]~17\ : std_logic;
SIGNAL \Con_80p_io[20]~18\ : std_logic;
SIGNAL \Con_80p_io[25]~23\ : std_logic;
SIGNAL \Con_80p_io[26]~24\ : std_logic;
SIGNAL \Con_80p_io[33]~31\ : std_logic;
SIGNAL \Clk_Main_i~combout\ : std_logic;
SIGNAL \nReset_i~combout\ : std_logic;
SIGNAL \cpt_s[1]~37\ : std_logic;
SIGNAL \cpt_s[1]~37COUT1_56\ : std_logic;
SIGNAL \cpt_s[2]~35\ : std_logic;
SIGNAL \cpt_s[2]~35COUT1_58\ : std_logic;
SIGNAL \cpt_s[3]~33\ : std_logic;
SIGNAL \cpt_s[3]~33COUT1_60\ : std_logic;
SIGNAL \cpt_s[4]~31\ : std_logic;
SIGNAL \cpt_s[5]~29\ : std_logic;
SIGNAL \cpt_s[5]~29COUT1_62\ : std_logic;
SIGNAL \cpt_s[6]~27\ : std_logic;
SIGNAL \cpt_s[6]~27COUT1_64\ : std_logic;
SIGNAL \cpt_s[7]~25\ : std_logic;
SIGNAL \cpt_s[7]~25COUT1_66\ : std_logic;
SIGNAL \cpt_s[8]~23\ : std_logic;
SIGNAL \cpt_s[8]~23COUT1_68\ : std_logic;
SIGNAL \cpt_s[9]~21\ : std_logic;
SIGNAL \cpt_s[10]~19\ : std_logic;
SIGNAL \cpt_s[10]~19COUT1_70\ : std_logic;
SIGNAL \cpt_s[11]~17\ : std_logic;
SIGNAL \cpt_s[11]~17COUT1_72\ : std_logic;
SIGNAL \cpt_s[12]~15\ : std_logic;
SIGNAL \cpt_s[12]~15COUT1_74\ : std_logic;
SIGNAL \cpt_s[13]~13\ : std_logic;
SIGNAL \cpt_s[13]~13COUT1_76\ : std_logic;
SIGNAL \cpt_s[14]~11\ : std_logic;
SIGNAL \cpt_s[15]~9\ : std_logic;
SIGNAL \cpt_s[15]~9COUT1_78\ : std_logic;
SIGNAL \cpt_s[16]~7\ : std_logic;
SIGNAL \cpt_s[16]~7COUT1_80\ : std_logic;
SIGNAL \cpt_s[17]~5\ : std_logic;
SIGNAL \cpt_s[17]~5COUT1_82\ : std_logic;
SIGNAL \cpt_s[18]~3\ : std_logic;
SIGNAL \cpt_s[18]~3COUT1_84\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan0~3_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|NML|is_out~0_combout\ : std_logic;
SIGNAL \U1|NML|is_out~1_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan0~4_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan0~5_combout\ : std_logic;
SIGNAL \U1|CHX|Mux15~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux14~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux14~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux14~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux13~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux13~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux13~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux12~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux12~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux12~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan2~1_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan3~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux11~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux11~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux11~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan4~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux10~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux10~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux10~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan5~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux9~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux9~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux9~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan6~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux8~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux8~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux8~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan8~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux7~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux7~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux7~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan8~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan8~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan9~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux6~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux6~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux6~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan9~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan10~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan9~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux5~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux5~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux5~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|Equal0~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan10~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan10~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux4~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux4~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux4~2_combout\ : std_logic;
SIGNAL \U1|CHX|Mux3~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux3~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|LessThan12~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux3~2_combout\ : std_logic;
SIGNAL \U1|CHX|Mux3~3_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|Equal0~1_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan12~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_max|LessThan12~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux2~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux2~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux2~2_combout\ : std_logic;
SIGNAL \U1|NML|bl_val|LessThan13~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux0~0_combout\ : std_logic;
SIGNAL \U1|NML|bl_min|Equal0~2_combout\ : std_logic;
SIGNAL \U1|CHX|Mux1~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux1~0_combout\ : std_logic;
SIGNAL \U1|CHX|Mux1~2_combout\ : std_logic;
SIGNAL \U1|CHX|Mux0~2_combout\ : std_logic;
SIGNAL \U1|CHX|Mux0~1_combout\ : std_logic;
SIGNAL \U1|CHX|Mux0~3_combout\ : std_logic;
SIGNAL \U1|CHX|Mux0~4_combout\ : std_logic;
SIGNAL cpt_s : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_nReset_i~combout\ : std_logic;
SIGNAL ALT_INV_cpt_s : std_logic_vector(19 DOWNTO 19);

BEGIN

ww_Clk_Gen_i <= Clk_Gen_i;
ww_Clk_Main_i <= Clk_Main_i;
ww_Encoder_A_i <= Encoder_A_i;
ww_Encoder_B_i <= Encoder_B_i;
ww_nButton_i <= nButton_i;
ww_nReset_i <= nReset_i;
ww_Switch_i <= Switch_i;
nLed_o <= ww_nLed_o;
Led_RGB_o <= ww_Led_RGB_o;
nSeven_Seg_o <= ww_nSeven_Seg_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_nReset_i~combout\ <= NOT \nReset_i~combout\;
ALT_INV_cpt_s(19) <= NOT cpt_s(19);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(9),
	combout => \Con_80p_io[9]~7\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(10),
	combout => \Con_80p_io[10]~8\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(11),
	combout => \Con_80p_io[11]~9\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(12),
	combout => \Con_80p_io[12]~10\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(13),
	combout => \Con_80p_io[13]~11\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(14),
	combout => \Con_80p_io[14]~12\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(15),
	combout => \Con_80p_io[15]~13\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(16),
	combout => \Con_80p_io[16]~14\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(17),
	combout => \Con_80p_io[17]~15\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(18),
	combout => \Con_80p_io[18]~16\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(19),
	combout => \Con_80p_io[19]~17\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(20),
	combout => \Con_80p_io[20]~18\);

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(25),
	combout => \Con_80p_io[25]~23\);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(26),
	combout => \Con_80p_io[26]~24\);

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(33),
	combout => \Con_80p_io[33]~31\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Main_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Main_i,
	combout => \Clk_Main_i~combout\);

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nReset_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nReset_i,
	combout => \nReset_i~combout\);

-- Location: LC_X1_Y4_N0
\cpt_s[0]\ : maxv_lcell
-- Equation(s):
-- cpt_s(0) = DFFEAS((((!cpt_s(0)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => cpt_s(0),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(0));

-- Location: LC_X1_Y4_N1
\cpt_s[1]\ : maxv_lcell
-- Equation(s):
-- cpt_s(1) = DFFEAS(cpt_s(0) $ ((cpt_s(1))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[1]~37\ = CARRY((cpt_s(0) & (cpt_s(1))))
-- \cpt_s[1]~37COUT1_56\ = CARRY((cpt_s(0) & (cpt_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(0),
	datab => cpt_s(1),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(1),
	cout0 => \cpt_s[1]~37\,
	cout1 => \cpt_s[1]~37COUT1_56\);

-- Location: LC_X1_Y4_N2
\cpt_s[2]\ : maxv_lcell
-- Equation(s):
-- cpt_s(2) = DFFEAS((cpt_s(2) $ ((\cpt_s[1]~37\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[2]~35\ = CARRY(((!\cpt_s[1]~37\) # (!cpt_s(2))))
-- \cpt_s[2]~35COUT1_58\ = CARRY(((!\cpt_s[1]~37COUT1_56\) # (!cpt_s(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(2),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \cpt_s[1]~37\,
	cin1 => \cpt_s[1]~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(2),
	cout0 => \cpt_s[2]~35\,
	cout1 => \cpt_s[2]~35COUT1_58\);

-- Location: LC_X1_Y4_N3
\cpt_s[3]\ : maxv_lcell
-- Equation(s):
-- cpt_s(3) = DFFEAS(cpt_s(3) $ ((((!\cpt_s[2]~35\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[3]~33\ = CARRY((cpt_s(3) & ((!\cpt_s[2]~35\))))
-- \cpt_s[3]~33COUT1_60\ = CARRY((cpt_s(3) & ((!\cpt_s[2]~35COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(3),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \cpt_s[2]~35\,
	cin1 => \cpt_s[2]~35COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(3),
	cout0 => \cpt_s[3]~33\,
	cout1 => \cpt_s[3]~33COUT1_60\);

-- Location: LC_X1_Y4_N4
\cpt_s[4]\ : maxv_lcell
-- Equation(s):
-- cpt_s(4) = DFFEAS((cpt_s(4) $ ((\cpt_s[3]~33\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[4]~31\ = CARRY(((!\cpt_s[3]~33COUT1_60\) # (!cpt_s(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(4),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \cpt_s[3]~33\,
	cin1 => \cpt_s[3]~33COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(4),
	cout => \cpt_s[4]~31\);

-- Location: LC_X1_Y4_N5
\cpt_s[5]\ : maxv_lcell
-- Equation(s):
-- cpt_s(5) = DFFEAS(cpt_s(5) $ ((((!\cpt_s[4]~31\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[5]~29\ = CARRY((cpt_s(5) & ((!\cpt_s[4]~31\))))
-- \cpt_s[5]~29COUT1_62\ = CARRY((cpt_s(5) & ((!\cpt_s[4]~31\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(5),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(5),
	cout0 => \cpt_s[5]~29\,
	cout1 => \cpt_s[5]~29COUT1_62\);

-- Location: LC_X1_Y4_N6
\cpt_s[6]\ : maxv_lcell
-- Equation(s):
-- cpt_s(6) = DFFEAS((cpt_s(6) $ (((!\cpt_s[4]~31\ & \cpt_s[5]~29\) # (\cpt_s[4]~31\ & \cpt_s[5]~29COUT1_62\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[6]~27\ = CARRY(((!\cpt_s[5]~29\) # (!cpt_s(6))))
-- \cpt_s[6]~27COUT1_64\ = CARRY(((!\cpt_s[5]~29COUT1_62\) # (!cpt_s(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(6),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~31\,
	cin0 => \cpt_s[5]~29\,
	cin1 => \cpt_s[5]~29COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(6),
	cout0 => \cpt_s[6]~27\,
	cout1 => \cpt_s[6]~27COUT1_64\);

-- Location: LC_X1_Y4_N7
\cpt_s[7]\ : maxv_lcell
-- Equation(s):
-- cpt_s(7) = DFFEAS((cpt_s(7) $ ((!(!\cpt_s[4]~31\ & \cpt_s[6]~27\) # (\cpt_s[4]~31\ & \cpt_s[6]~27COUT1_64\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[7]~25\ = CARRY(((cpt_s(7) & !\cpt_s[6]~27\)))
-- \cpt_s[7]~25COUT1_66\ = CARRY(((cpt_s(7) & !\cpt_s[6]~27COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(7),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~31\,
	cin0 => \cpt_s[6]~27\,
	cin1 => \cpt_s[6]~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(7),
	cout0 => \cpt_s[7]~25\,
	cout1 => \cpt_s[7]~25COUT1_66\);

-- Location: LC_X1_Y4_N8
\cpt_s[8]\ : maxv_lcell
-- Equation(s):
-- cpt_s(8) = DFFEAS((cpt_s(8) $ (((!\cpt_s[4]~31\ & \cpt_s[7]~25\) # (\cpt_s[4]~31\ & \cpt_s[7]~25COUT1_66\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[8]~23\ = CARRY(((!\cpt_s[7]~25\) # (!cpt_s(8))))
-- \cpt_s[8]~23COUT1_68\ = CARRY(((!\cpt_s[7]~25COUT1_66\) # (!cpt_s(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(8),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~31\,
	cin0 => \cpt_s[7]~25\,
	cin1 => \cpt_s[7]~25COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(8),
	cout0 => \cpt_s[8]~23\,
	cout1 => \cpt_s[8]~23COUT1_68\);

-- Location: LC_X1_Y4_N9
\cpt_s[9]\ : maxv_lcell
-- Equation(s):
-- cpt_s(9) = DFFEAS((cpt_s(9) $ ((!(!\cpt_s[4]~31\ & \cpt_s[8]~23\) # (\cpt_s[4]~31\ & \cpt_s[8]~23COUT1_68\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[9]~21\ = CARRY(((cpt_s(9) & !\cpt_s[8]~23COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(9),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[4]~31\,
	cin0 => \cpt_s[8]~23\,
	cin1 => \cpt_s[8]~23COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(9),
	cout => \cpt_s[9]~21\);

-- Location: LC_X2_Y4_N0
\cpt_s[10]\ : maxv_lcell
-- Equation(s):
-- cpt_s(10) = DFFEAS((cpt_s(10) $ ((\cpt_s[9]~21\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[10]~19\ = CARRY(((!\cpt_s[9]~21\) # (!cpt_s(10))))
-- \cpt_s[10]~19COUT1_70\ = CARRY(((!\cpt_s[9]~21\) # (!cpt_s(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(10),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(10),
	cout0 => \cpt_s[10]~19\,
	cout1 => \cpt_s[10]~19COUT1_70\);

-- Location: LC_X2_Y4_N1
\cpt_s[11]\ : maxv_lcell
-- Equation(s):
-- cpt_s(11) = DFFEAS((cpt_s(11) $ ((!(!\cpt_s[9]~21\ & \cpt_s[10]~19\) # (\cpt_s[9]~21\ & \cpt_s[10]~19COUT1_70\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[11]~17\ = CARRY(((cpt_s(11) & !\cpt_s[10]~19\)))
-- \cpt_s[11]~17COUT1_72\ = CARRY(((cpt_s(11) & !\cpt_s[10]~19COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(11),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~21\,
	cin0 => \cpt_s[10]~19\,
	cin1 => \cpt_s[10]~19COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(11),
	cout0 => \cpt_s[11]~17\,
	cout1 => \cpt_s[11]~17COUT1_72\);

-- Location: LC_X2_Y4_N2
\cpt_s[12]\ : maxv_lcell
-- Equation(s):
-- cpt_s(12) = DFFEAS((cpt_s(12) $ (((!\cpt_s[9]~21\ & \cpt_s[11]~17\) # (\cpt_s[9]~21\ & \cpt_s[11]~17COUT1_72\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[12]~15\ = CARRY(((!\cpt_s[11]~17\) # (!cpt_s(12))))
-- \cpt_s[12]~15COUT1_74\ = CARRY(((!\cpt_s[11]~17COUT1_72\) # (!cpt_s(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(12),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~21\,
	cin0 => \cpt_s[11]~17\,
	cin1 => \cpt_s[11]~17COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(12),
	cout0 => \cpt_s[12]~15\,
	cout1 => \cpt_s[12]~15COUT1_74\);

-- Location: LC_X2_Y4_N3
\cpt_s[13]\ : maxv_lcell
-- Equation(s):
-- cpt_s(13) = DFFEAS(cpt_s(13) $ ((((!(!\cpt_s[9]~21\ & \cpt_s[12]~15\) # (\cpt_s[9]~21\ & \cpt_s[12]~15COUT1_74\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[13]~13\ = CARRY((cpt_s(13) & ((!\cpt_s[12]~15\))))
-- \cpt_s[13]~13COUT1_76\ = CARRY((cpt_s(13) & ((!\cpt_s[12]~15COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(13),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~21\,
	cin0 => \cpt_s[12]~15\,
	cin1 => \cpt_s[12]~15COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(13),
	cout0 => \cpt_s[13]~13\,
	cout1 => \cpt_s[13]~13COUT1_76\);

-- Location: LC_X2_Y4_N4
\cpt_s[14]\ : maxv_lcell
-- Equation(s):
-- cpt_s(14) = DFFEAS(cpt_s(14) $ (((((!\cpt_s[9]~21\ & \cpt_s[13]~13\) # (\cpt_s[9]~21\ & \cpt_s[13]~13COUT1_76\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[14]~11\ = CARRY(((!\cpt_s[13]~13COUT1_76\)) # (!cpt_s(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(14),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[9]~21\,
	cin0 => \cpt_s[13]~13\,
	cin1 => \cpt_s[13]~13COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(14),
	cout => \cpt_s[14]~11\);

-- Location: LC_X2_Y4_N5
\cpt_s[15]\ : maxv_lcell
-- Equation(s):
-- cpt_s(15) = DFFEAS(cpt_s(15) $ ((((!\cpt_s[14]~11\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[15]~9\ = CARRY((cpt_s(15) & ((!\cpt_s[14]~11\))))
-- \cpt_s[15]~9COUT1_78\ = CARRY((cpt_s(15) & ((!\cpt_s[14]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(15),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(15),
	cout0 => \cpt_s[15]~9\,
	cout1 => \cpt_s[15]~9COUT1_78\);

-- Location: LC_X2_Y4_N6
\cpt_s[16]\ : maxv_lcell
-- Equation(s):
-- cpt_s(16) = DFFEAS(cpt_s(16) $ (((((!\cpt_s[14]~11\ & \cpt_s[15]~9\) # (\cpt_s[14]~11\ & \cpt_s[15]~9COUT1_78\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[16]~7\ = CARRY(((!\cpt_s[15]~9\)) # (!cpt_s(16)))
-- \cpt_s[16]~7COUT1_80\ = CARRY(((!\cpt_s[15]~9COUT1_78\)) # (!cpt_s(16)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(16),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[15]~9\,
	cin1 => \cpt_s[15]~9COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(16),
	cout0 => \cpt_s[16]~7\,
	cout1 => \cpt_s[16]~7COUT1_80\);

-- Location: LC_X2_Y4_N7
\cpt_s[17]\ : maxv_lcell
-- Equation(s):
-- cpt_s(17) = DFFEAS((cpt_s(17) $ ((!(!\cpt_s[14]~11\ & \cpt_s[16]~7\) # (\cpt_s[14]~11\ & \cpt_s[16]~7COUT1_80\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[17]~5\ = CARRY(((cpt_s(17) & !\cpt_s[16]~7\)))
-- \cpt_s[17]~5COUT1_82\ = CARRY(((cpt_s(17) & !\cpt_s[16]~7COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => cpt_s(17),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[16]~7\,
	cin1 => \cpt_s[16]~7COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(17),
	cout0 => \cpt_s[17]~5\,
	cout1 => \cpt_s[17]~5COUT1_82\);

-- Location: LC_X2_Y4_N8
\cpt_s[18]\ : maxv_lcell
-- Equation(s):
-- cpt_s(18) = DFFEAS(cpt_s(18) $ (((((!\cpt_s[14]~11\ & \cpt_s[17]~5\) # (\cpt_s[14]~11\ & \cpt_s[17]~5COUT1_82\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \cpt_s[18]~3\ = CARRY(((!\cpt_s[17]~5\)) # (!cpt_s(18)))
-- \cpt_s[18]~3COUT1_84\ = CARRY(((!\cpt_s[17]~5COUT1_82\)) # (!cpt_s(18)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => cpt_s(18),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[17]~5\,
	cin1 => \cpt_s[17]~5COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(18),
	cout0 => \cpt_s[18]~3\,
	cout1 => \cpt_s[18]~3COUT1_84\);

-- Location: LC_X2_Y4_N9
\cpt_s[19]\ : maxv_lcell
-- Equation(s):
-- cpt_s(19) = DFFEAS((((!\cpt_s[14]~11\ & \cpt_s[18]~3\) # (\cpt_s[14]~11\ & \cpt_s[18]~3COUT1_84\) $ (!cpt_s(19)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => cpt_s(19),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \cpt_s[14]~11\,
	cin0 => \cpt_s[18]~3\,
	cin1 => \cpt_s[18]~3COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cpt_s(19));

-- Location: LC_X7_Y7_N3
\U1|NML|bl_min|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan0~3_combout\ = ((!\Con_80p_io[10]~8\ & (!\Con_80p_io[9]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan0~3_combout\);

-- Location: LC_X8_Y7_N9
\U1|NML|bl_min|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan0~2_combout\ = ((!\Con_80p_io[11]~9\ & ((!\Con_80p_io[12]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[12]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan0~2_combout\);

-- Location: LC_X9_Y6_N3
\U1|NML|bl_min|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan0~0_combout\ = (\Con_80p_io[10]~8\ & (((!\Con_80p_io[17]~15\ & \Con_80p_io[9]~7\)) # (!\Con_80p_io[18]~16\))) # (!\Con_80p_io[10]~8\ & (!\Con_80p_io[17]~15\ & (\Con_80p_io[9]~7\ & !\Con_80p_io[18]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[9]~7\,
	datac => \Con_80p_io[10]~8\,
	datad => \Con_80p_io[18]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan0~0_combout\);

-- Location: LC_X7_Y6_N6
\U1|NML|bl_min|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan0~1_combout\ = ((\U1|NML|bl_min|LessThan0~0_combout\ & ((\Con_80p_io[11]~9\) # (!\Con_80p_io[19]~17\))) # (!\U1|NML|bl_min|LessThan0~0_combout\ & (\Con_80p_io[11]~9\ & !\Con_80p_io[19]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|NML|bl_min|LessThan0~0_combout\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[19]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan0~1_combout\);

-- Location: LC_X9_Y6_N1
\U1|NML|is_out~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|is_out~0_combout\ = (\Con_80p_io[14]~12\ & (\Con_80p_io[17]~15\ & (!\Con_80p_io[13]~11\ & \Con_80p_io[18]~16\))) # (!\Con_80p_io[14]~12\ & ((\Con_80p_io[18]~16\) # ((\Con_80p_io[17]~15\ & !\Con_80p_io[13]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[14]~12\,
	datac => \Con_80p_io[13]~11\,
	datad => \Con_80p_io[18]~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|is_out~0_combout\);

-- Location: LC_X8_Y6_N9
\U1|NML|is_out~1\ : maxv_lcell
-- Equation(s):
-- \U1|NML|is_out~1_combout\ = (\U1|NML|is_out~0_combout\ & (((\Con_80p_io[19]~17\) # (!\Con_80p_io[15]~13\)))) # (!\U1|NML|is_out~0_combout\ & (((!\Con_80p_io[15]~13\ & \Con_80p_io[19]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|is_out~0_combout\,
	datac => \Con_80p_io[15]~13\,
	datad => \Con_80p_io[19]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|is_out~1_combout\);

-- Location: LC_X7_Y6_N4
\U1|NML|bl_min|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan0~4_combout\ = (!\Con_80p_io[26]~24\ & ((\Con_80p_io[16]~14\ & ((!\Con_80p_io[20]~18\) # (!\U1|NML|is_out~1_combout\))) # (!\Con_80p_io[16]~14\ & (!\U1|NML|is_out~1_combout\ & !\Con_80p_io[20]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0445",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[26]~24\,
	datab => \Con_80p_io[16]~14\,
	datac => \U1|NML|is_out~1_combout\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan0~4_combout\);

-- Location: LC_X7_Y6_N5
\U1|NML|bl_min|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan0~5_combout\ = (\U1|NML|bl_min|LessThan0~4_combout\ & ((\Con_80p_io[12]~10\ & (\Con_80p_io[20]~18\ & !\U1|NML|bl_min|LessThan0~1_combout\)) # (!\Con_80p_io[12]~10\ & ((\Con_80p_io[20]~18\) # 
-- (!\U1|NML|bl_min|LessThan0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4d00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[12]~10\,
	datab => \Con_80p_io[20]~18\,
	datac => \U1|NML|bl_min|LessThan0~1_combout\,
	datad => \U1|NML|bl_min|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan0~5_combout\);

-- Location: LC_X7_Y7_N8
\U1|CHX|Mux15~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux15~0_combout\ = (\Con_80p_io[25]~23\) # ((\U1|NML|bl_min|LessThan0~3_combout\ & (\U1|NML|bl_min|LessThan0~2_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|LessThan0~3_combout\,
	datab => \U1|NML|bl_min|LessThan0~2_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux15~0_combout\);

-- Location: LC_X11_Y6_N6
\U1|NML|bl_max|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan0~0_combout\ = (\Con_80p_io[13]~11\) # ((\Con_80p_io[15]~13\) # ((\Con_80p_io[14]~12\) # (\Con_80p_io[16]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[13]~11\,
	datab => \Con_80p_io[15]~13\,
	datac => \Con_80p_io[14]~12\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan0~0_combout\);

-- Location: LC_X9_Y6_N4
\U1|NML|bl_min|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan1~0_combout\ = ((\Con_80p_io[10]~8\) # ((\Con_80p_io[11]~9\) # (\Con_80p_io[12]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[12]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan1~0_combout\);

-- Location: LC_X10_Y7_N5
\U1|NML|bl_val|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan0~0_combout\ = (\Con_80p_io[17]~15\) # ((\Con_80p_io[19]~17\) # ((\Con_80p_io[18]~16\) # (\Con_80p_io[20]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan0~0_combout\);

-- Location: LC_X10_Y6_N0
\U1|CHX|Mux14~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux14~1_combout\ = (\U1|NML|bl_max|LessThan0~0_combout\ & ((\U1|NML|bl_min|LessThan1~0_combout\ & (!\U1|NML|bl_val|LessThan0~0_combout\)) # (!\U1|NML|bl_min|LessThan1~0_combout\ & ((\U1|NML|bl_val|LessThan0~0_combout\) # (\Con_80p_io[33]~31\))))) 
-- # (!\U1|NML|bl_max|LessThan0~0_combout\ & ((\U1|NML|bl_min|LessThan1~0_combout\) # ((\U1|NML|bl_val|LessThan0~0_combout\ & \Con_80p_io[33]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_max|LessThan0~0_combout\,
	datab => \U1|NML|bl_min|LessThan1~0_combout\,
	datac => \U1|NML|bl_val|LessThan0~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux14~1_combout\);

-- Location: LC_X10_Y6_N9
\U1|CHX|Mux14~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux14~0_combout\ = (\Con_80p_io[25]~23\ & ((\Con_80p_io[26]~24\) # ((\U1|NML|bl_val|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \Con_80p_io[26]~24\,
	datac => \U1|NML|bl_val|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux14~0_combout\);

-- Location: LC_X10_Y6_N7
\U1|CHX|Mux14~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux14~2_combout\ = (\U1|CHX|Mux14~0_combout\) # ((\U1|NML|bl_min|LessThan0~5_combout\ & (\U1|CHX|Mux14~1_combout\ & !\Con_80p_io[25]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|LessThan0~5_combout\,
	datab => \U1|CHX|Mux14~1_combout\,
	datac => \Con_80p_io[25]~23\,
	datad => \U1|CHX|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux14~2_combout\);

-- Location: LC_X9_Y6_N5
\U1|NML|bl_min|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan2~0_combout\ = (!\Con_80p_io[12]~10\ & (!\Con_80p_io[11]~9\ & ((!\Con_80p_io[9]~7\) # (!\Con_80p_io[10]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0105",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[12]~10\,
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan2~0_combout\);

-- Location: LC_X11_Y6_N9
\U1|NML|bl_max|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan1~0_combout\ = ((\Con_80p_io[15]~13\) # ((\Con_80p_io[14]~12\) # (\Con_80p_io[16]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[15]~13\,
	datac => \Con_80p_io[14]~12\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan1~0_combout\);

-- Location: LC_X10_Y7_N7
\U1|NML|bl_val|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan0~1_combout\ = ((!\Con_80p_io[18]~16\ & (!\Con_80p_io[19]~17\ & !\Con_80p_io[20]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[18]~16\,
	datac => \Con_80p_io[19]~17\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan0~1_combout\);

-- Location: LC_X10_Y6_N1
\U1|CHX|Mux13~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux13~1_combout\ = (\U1|NML|bl_min|LessThan2~0_combout\ & ((\U1|NML|bl_max|LessThan1~0_combout\ & ((\Con_80p_io[33]~31\) # (!\U1|NML|bl_val|LessThan0~1_combout\))) # (!\U1|NML|bl_max|LessThan1~0_combout\ & (!\U1|NML|bl_val|LessThan0~1_combout\ & 
-- \Con_80p_io[33]~31\)))) # (!\U1|NML|bl_min|LessThan2~0_combout\ & (((\U1|NML|bl_val|LessThan0~1_combout\)) # (!\U1|NML|bl_max|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "db59",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|LessThan2~0_combout\,
	datab => \U1|NML|bl_max|LessThan1~0_combout\,
	datac => \U1|NML|bl_val|LessThan0~1_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux13~1_combout\);

-- Location: LC_X10_Y6_N3
\U1|CHX|Mux13~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux13~0_combout\ = (\Con_80p_io[25]~23\ & ((\Con_80p_io[26]~24\) # ((!\U1|NML|bl_val|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \Con_80p_io[26]~24\,
	datac => \U1|NML|bl_val|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux13~0_combout\);

-- Location: LC_X10_Y6_N4
\U1|CHX|Mux13~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux13~2_combout\ = (\U1|CHX|Mux13~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux13~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux13~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux13~2_combout\);

-- Location: LC_X10_Y7_N3
\U1|NML|bl_val|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan2~0_combout\ = (\Con_80p_io[19]~17\) # ((\Con_80p_io[20]~18\) # ((\Con_80p_io[17]~15\ & \Con_80p_io[18]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan2~0_combout\);

-- Location: LC_X8_Y6_N5
\U1|NML|bl_max|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan2~0_combout\ = (!\Con_80p_io[15]~13\ & (!\Con_80p_io[16]~14\ & ((!\Con_80p_io[13]~11\) # (!\Con_80p_io[14]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0007",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[14]~12\,
	datab => \Con_80p_io[13]~11\,
	datac => \Con_80p_io[15]~13\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan2~0_combout\);

-- Location: LC_X8_Y7_N0
\U1|CHX|Mux12~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux12~1_combout\ = (\U1|NML|bl_val|LessThan2~0_combout\ & ((\U1|NML|bl_min|LessThan0~2_combout\ & ((\Con_80p_io[33]~31\) # (!\U1|NML|bl_max|LessThan2~0_combout\))) # (!\U1|NML|bl_min|LessThan0~2_combout\ & (\U1|NML|bl_max|LessThan2~0_combout\)))) 
-- # (!\U1|NML|bl_val|LessThan2~0_combout\ & (((!\U1|NML|bl_max|LessThan2~0_combout\ & \Con_80p_io[33]~31\)) # (!\U1|NML|bl_min|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd39",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_val|LessThan2~0_combout\,
	datab => \U1|NML|bl_min|LessThan0~2_combout\,
	datac => \U1|NML|bl_max|LessThan2~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux12~1_combout\);

-- Location: LC_X8_Y7_N6
\U1|CHX|Mux12~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux12~0_combout\ = ((\Con_80p_io[25]~23\ & ((\U1|NML|bl_val|LessThan2~0_combout\) # (\Con_80p_io[26]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_val|LessThan2~0_combout\,
	datac => \Con_80p_io[26]~24\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux12~0_combout\);

-- Location: LC_X8_Y7_N4
\U1|CHX|Mux12~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux12~2_combout\ = (\U1|CHX|Mux12~0_combout\) # ((\U1|NML|bl_min|LessThan0~5_combout\ & (\U1|CHX|Mux12~1_combout\ & !\Con_80p_io[25]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|LessThan0~5_combout\,
	datab => \U1|CHX|Mux12~1_combout\,
	datac => \U1|CHX|Mux12~0_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux12~2_combout\);

-- Location: LC_X9_Y6_N2
\U1|NML|bl_min|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan4~0_combout\ = (!\Con_80p_io[12]~10\ & (((!\Con_80p_io[10]~8\ & !\Con_80p_io[9]~7\)) # (!\Con_80p_io[11]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0515",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[12]~10\,
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan4~0_combout\);

-- Location: LC_X8_Y6_N2
\U1|NML|bl_max|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan2~1_combout\ = (((!\Con_80p_io[15]~13\ & !\Con_80p_io[16]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Con_80p_io[15]~13\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan2~1_combout\);

-- Location: LC_X7_Y6_N8
\U1|NML|bl_val|LessThan3~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan3~0_combout\ = (\Con_80p_io[19]~17\) # (((\Con_80p_io[20]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[19]~17\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan3~0_combout\);

-- Location: LC_X7_Y6_N7
\U1|CHX|Mux11~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux11~1_combout\ = (\U1|NML|bl_min|LessThan4~0_combout\ & ((\Con_80p_io[33]~31\ & ((\U1|NML|bl_val|LessThan3~0_combout\) # (!\U1|NML|bl_max|LessThan2~1_combout\))) # (!\Con_80p_io[33]~31\ & (!\U1|NML|bl_max|LessThan2~1_combout\ & 
-- \U1|NML|bl_val|LessThan3~0_combout\)))) # (!\U1|NML|bl_min|LessThan4~0_combout\ & (((\U1|NML|bl_max|LessThan2~1_combout\) # (!\U1|NML|bl_val|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da5d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|LessThan4~0_combout\,
	datab => \Con_80p_io[33]~31\,
	datac => \U1|NML|bl_max|LessThan2~1_combout\,
	datad => \U1|NML|bl_val|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux11~1_combout\);

-- Location: LC_X7_Y6_N9
\U1|CHX|Mux11~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux11~0_combout\ = (\Con_80p_io[25]~23\ & ((\Con_80p_io[26]~24\) # ((\Con_80p_io[20]~18\) # (\Con_80p_io[19]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[26]~24\,
	datab => \Con_80p_io[20]~18\,
	datac => \Con_80p_io[25]~23\,
	datad => \Con_80p_io[19]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux11~0_combout\);

-- Location: LC_X7_Y6_N2
\U1|CHX|Mux11~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux11~2_combout\ = (\U1|CHX|Mux11~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux11~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux11~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux11~2_combout\);

-- Location: LC_X9_Y6_N7
\U1|NML|bl_min|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan5~0_combout\ = ((!\Con_80p_io[12]~10\ & ((!\Con_80p_io[11]~9\) # (!\Con_80p_io[10]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[12]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan5~0_combout\);

-- Location: LC_X10_Y7_N0
\U1|NML|bl_val|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan4~0_combout\ = (\Con_80p_io[20]~18\) # ((\Con_80p_io[19]~17\ & ((\Con_80p_io[17]~15\) # (\Con_80p_io[18]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan4~0_combout\);

-- Location: LC_X11_Y6_N4
\U1|NML|bl_max|LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan4~0_combout\ = (!\Con_80p_io[16]~14\ & (((!\Con_80p_io[13]~11\ & !\Con_80p_io[14]~12\)) # (!\Con_80p_io[15]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0037",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[13]~11\,
	datab => \Con_80p_io[15]~13\,
	datac => \Con_80p_io[14]~12\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan4~0_combout\);

-- Location: LC_X10_Y6_N2
\U1|CHX|Mux10~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux10~1_combout\ = (\U1|NML|bl_min|LessThan5~0_combout\ & ((\Con_80p_io[33]~31\ & ((\U1|NML|bl_val|LessThan4~0_combout\) # (!\U1|NML|bl_max|LessThan4~0_combout\))) # (!\Con_80p_io[33]~31\ & (\U1|NML|bl_val|LessThan4~0_combout\ & 
-- !\U1|NML|bl_max|LessThan4~0_combout\)))) # (!\U1|NML|bl_min|LessThan5~0_combout\ & (((\U1|NML|bl_max|LessThan4~0_combout\) # (!\U1|NML|bl_val|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3cb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[33]~31\,
	datab => \U1|NML|bl_min|LessThan5~0_combout\,
	datac => \U1|NML|bl_val|LessThan4~0_combout\,
	datad => \U1|NML|bl_max|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux10~1_combout\);

-- Location: LC_X10_Y6_N8
\U1|CHX|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux10~0_combout\ = (\Con_80p_io[25]~23\ & ((\Con_80p_io[26]~24\) # ((\U1|NML|bl_val|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \Con_80p_io[26]~24\,
	datac => \U1|NML|bl_val|LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux10~0_combout\);

-- Location: LC_X10_Y6_N5
\U1|CHX|Mux10~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux10~2_combout\ = (\U1|CHX|Mux10~0_combout\) # ((\U1|NML|bl_min|LessThan0~5_combout\ & (\U1|CHX|Mux10~1_combout\ & !\Con_80p_io[25]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|LessThan0~5_combout\,
	datab => \U1|CHX|Mux10~1_combout\,
	datac => \Con_80p_io[25]~23\,
	datad => \U1|CHX|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux10~2_combout\);

-- Location: LC_X9_Y6_N0
\U1|NML|bl_min|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan6~0_combout\ = (!\Con_80p_io[12]~10\ & (((!\Con_80p_io[9]~7\) # (!\Con_80p_io[11]~9\)) # (!\Con_80p_io[10]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[12]~10\,
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan6~0_combout\);

-- Location: LC_X11_Y6_N5
\U1|NML|bl_max|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan5~0_combout\ = ((!\Con_80p_io[16]~14\ & ((!\Con_80p_io[14]~12\) # (!\Con_80p_io[15]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[15]~13\,
	datac => \Con_80p_io[14]~12\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan5~0_combout\);

-- Location: LC_X11_Y7_N8
\U1|NML|bl_val|LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan5~0_combout\ = ((\Con_80p_io[20]~18\) # ((\Con_80p_io[18]~16\ & \Con_80p_io[19]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[18]~16\,
	datac => \Con_80p_io[19]~17\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan5~0_combout\);

-- Location: LC_X11_Y7_N9
\U1|CHX|Mux9~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux9~1_combout\ = (\U1|NML|bl_min|LessThan6~0_combout\ & ((\Con_80p_io[33]~31\ & ((\U1|NML|bl_val|LessThan5~0_combout\) # (!\U1|NML|bl_max|LessThan5~0_combout\))) # (!\Con_80p_io[33]~31\ & (!\U1|NML|bl_max|LessThan5~0_combout\ & 
-- \U1|NML|bl_val|LessThan5~0_combout\)))) # (!\U1|NML|bl_min|LessThan6~0_combout\ & (((\U1|NML|bl_max|LessThan5~0_combout\) # (!\U1|NML|bl_val|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[33]~31\,
	datab => \U1|NML|bl_min|LessThan6~0_combout\,
	datac => \U1|NML|bl_max|LessThan5~0_combout\,
	datad => \U1|NML|bl_val|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux9~1_combout\);

-- Location: LC_X11_Y7_N3
\U1|CHX|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux9~0_combout\ = ((\Con_80p_io[25]~23\ & ((\U1|NML|bl_val|LessThan5~0_combout\) # (\Con_80p_io[26]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_val|LessThan5~0_combout\,
	datac => \Con_80p_io[26]~24\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux9~0_combout\);

-- Location: LC_X11_Y7_N2
\U1|CHX|Mux9~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux9~2_combout\ = (\U1|CHX|Mux9~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux9~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux9~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux9~2_combout\);

-- Location: LC_X8_Y6_N8
\U1|NML|bl_max|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan6~0_combout\ = (!\Con_80p_io[16]~14\ & (((!\Con_80p_io[15]~13\) # (!\Con_80p_io[13]~11\)) # (!\Con_80p_io[14]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[14]~12\,
	datab => \Con_80p_io[13]~11\,
	datac => \Con_80p_io[15]~13\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan6~0_combout\);

-- Location: LC_X10_Y7_N6
\U1|NML|bl_val|LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan6~0_combout\ = (\Con_80p_io[20]~18\) # ((\Con_80p_io[17]~15\ & (\Con_80p_io[19]~17\ & \Con_80p_io[18]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan6~0_combout\);

-- Location: LC_X7_Y7_N7
\U1|CHX|Mux8~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux8~1_combout\ = (\U1|NML|bl_max|LessThan6~0_combout\ & ((\Con_80p_io[12]~10\) # ((\U1|NML|bl_val|LessThan6~0_combout\ & \Con_80p_io[33]~31\)))) # (!\U1|NML|bl_max|LessThan6~0_combout\ & ((\Con_80p_io[12]~10\ & 
-- (!\U1|NML|bl_val|LessThan6~0_combout\)) # (!\Con_80p_io[12]~10\ & ((\U1|NML|bl_val|LessThan6~0_combout\) # (\Con_80p_io[33]~31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_max|LessThan6~0_combout\,
	datab => \Con_80p_io[12]~10\,
	datac => \U1|NML|bl_val|LessThan6~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux8~1_combout\);

-- Location: LC_X7_Y7_N2
\U1|CHX|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux8~0_combout\ = ((\Con_80p_io[25]~23\ & ((\Con_80p_io[26]~24\) # (\U1|NML|bl_val|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[26]~24\,
	datac => \U1|NML|bl_val|LessThan6~0_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux8~0_combout\);

-- Location: LC_X7_Y7_N0
\U1|CHX|Mux8~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux8~2_combout\ = (\U1|CHX|Mux8~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux8~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux8~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux8~2_combout\);

-- Location: LC_X9_Y6_N8
\U1|NML|bl_min|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan8~0_combout\ = ((!\Con_80p_io[10]~8\ & (!\Con_80p_io[11]~9\ & !\Con_80p_io[9]~7\))) # (!\Con_80p_io[12]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5557",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[12]~10\,
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan8~0_combout\);

-- Location: LC_X7_Y6_N1
\U1|CHX|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux7~1_combout\ = (\Con_80p_io[16]~14\ & ((\U1|NML|bl_min|LessThan8~0_combout\ & ((\Con_80p_io[33]~31\) # (\Con_80p_io[20]~18\))) # (!\U1|NML|bl_min|LessThan8~0_combout\ & ((!\Con_80p_io[20]~18\))))) # (!\Con_80p_io[16]~14\ & 
-- (((\Con_80p_io[33]~31\ & \Con_80p_io[20]~18\)) # (!\U1|NML|bl_min|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e58f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[16]~14\,
	datab => \Con_80p_io[33]~31\,
	datac => \U1|NML|bl_min|LessThan8~0_combout\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux7~1_combout\);

-- Location: LC_X7_Y6_N3
\U1|CHX|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux7~0_combout\ = (\Con_80p_io[25]~23\ & (((\Con_80p_io[26]~24\) # (\Con_80p_io[20]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datac => \Con_80p_io[26]~24\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux7~0_combout\);

-- Location: LC_X7_Y6_N0
\U1|CHX|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux7~2_combout\ = (\U1|CHX|Mux7~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux7~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux7~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux7~2_combout\);

-- Location: LC_X9_Y7_N3
\U1|NML|bl_max|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan8~0_combout\ = ((!\Con_80p_io[14]~12\ & (!\Con_80p_io[13]~11\ & !\Con_80p_io[15]~13\))) # (!\Con_80p_io[16]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f1f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[14]~12\,
	datab => \Con_80p_io[13]~11\,
	datac => \Con_80p_io[16]~14\,
	datad => \Con_80p_io[15]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan8~0_combout\);

-- Location: LC_X10_Y7_N2
\U1|NML|bl_val|LessThan8~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan8~0_combout\ = (\Con_80p_io[20]~18\ & ((\Con_80p_io[17]~15\) # ((\Con_80p_io[19]~17\) # (\Con_80p_io[18]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan8~0_combout\);

-- Location: LC_X9_Y7_N6
\U1|NML|bl_min|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan9~0_combout\ = (((!\Con_80p_io[10]~8\ & !\Con_80p_io[11]~9\)) # (!\Con_80p_io[12]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[12]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan9~0_combout\);

-- Location: LC_X9_Y7_N9
\U1|CHX|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux6~1_combout\ = (\U1|NML|bl_max|LessThan8~0_combout\ & (((\U1|NML|bl_val|LessThan8~0_combout\ & \Con_80p_io[33]~31\)) # (!\U1|NML|bl_min|LessThan9~0_combout\))) # (!\U1|NML|bl_max|LessThan8~0_combout\ & ((\U1|NML|bl_val|LessThan8~0_combout\ & 
-- (\U1|NML|bl_min|LessThan9~0_combout\)) # (!\U1|NML|bl_val|LessThan8~0_combout\ & ((\Con_80p_io[33]~31\) # (!\U1|NML|bl_min|LessThan9~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "db4b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_max|LessThan8~0_combout\,
	datab => \U1|NML|bl_val|LessThan8~0_combout\,
	datac => \U1|NML|bl_min|LessThan9~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux6~1_combout\);

-- Location: LC_X9_Y7_N1
\U1|CHX|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux6~0_combout\ = ((\Con_80p_io[25]~23\ & ((\Con_80p_io[26]~24\) # (\U1|NML|bl_val|LessThan8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[26]~24\,
	datac => \U1|NML|bl_val|LessThan8~0_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux6~0_combout\);

-- Location: LC_X9_Y7_N0
\U1|CHX|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux6~2_combout\ = (\U1|CHX|Mux6~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux6~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux6~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux6~2_combout\);

-- Location: LC_X10_Y7_N1
\U1|NML|bl_val|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan9~0_combout\ = ((\Con_80p_io[20]~18\ & ((\Con_80p_io[18]~16\) # (\Con_80p_io[19]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[18]~16\,
	datac => \Con_80p_io[19]~17\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan9~0_combout\);

-- Location: LC_X9_Y6_N6
\U1|NML|bl_min|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan10~0_combout\ = ((!\Con_80p_io[11]~9\ & ((!\Con_80p_io[9]~7\) # (!\Con_80p_io[10]~8\)))) # (!\Con_80p_io[12]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "575f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[12]~10\,
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan10~0_combout\);

-- Location: LC_X8_Y6_N7
\U1|NML|bl_max|LessThan9~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan9~0_combout\ = (((!\Con_80p_io[14]~12\ & !\Con_80p_io[15]~13\)) # (!\Con_80p_io[16]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[14]~12\,
	datac => \Con_80p_io[15]~13\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan9~0_combout\);

-- Location: LC_X8_Y7_N7
\U1|CHX|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux5~1_combout\ = (\U1|NML|bl_val|LessThan9~0_combout\ & ((\U1|NML|bl_min|LessThan10~0_combout\ & ((\Con_80p_io[33]~31\) # (!\U1|NML|bl_max|LessThan9~0_combout\))) # (!\U1|NML|bl_min|LessThan10~0_combout\ & (\U1|NML|bl_max|LessThan9~0_combout\)))) 
-- # (!\U1|NML|bl_val|LessThan9~0_combout\ & (((!\U1|NML|bl_max|LessThan9~0_combout\ & \Con_80p_io[33]~31\)) # (!\U1|NML|bl_min|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bd39",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_val|LessThan9~0_combout\,
	datab => \U1|NML|bl_min|LessThan10~0_combout\,
	datac => \U1|NML|bl_max|LessThan9~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux5~1_combout\);

-- Location: LC_X8_Y7_N8
\U1|CHX|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux5~0_combout\ = ((\Con_80p_io[25]~23\ & ((\U1|NML|bl_val|LessThan9~0_combout\) # (\Con_80p_io[26]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_val|LessThan9~0_combout\,
	datac => \Con_80p_io[26]~24\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux5~0_combout\);

-- Location: LC_X8_Y7_N2
\U1|CHX|Mux5~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux5~2_combout\ = (\U1|CHX|Mux5~0_combout\) # ((\U1|NML|bl_min|LessThan0~5_combout\ & (!\Con_80p_io[25]~23\ & \U1|CHX|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|LessThan0~5_combout\,
	datab => \Con_80p_io[25]~23\,
	datac => \U1|CHX|Mux5~1_combout\,
	datad => \U1|CHX|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux5~2_combout\);

-- Location: LC_X7_Y7_N6
\U1|NML|bl_min|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|Equal0~0_combout\ = ((\Con_80p_io[11]~9\ & ((\Con_80p_io[12]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[12]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|Equal0~0_combout\);

-- Location: LC_X10_Y7_N4
\U1|NML|bl_val|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan10~0_combout\ = (\Con_80p_io[20]~18\ & ((\Con_80p_io[19]~17\) # ((\Con_80p_io[17]~15\ & \Con_80p_io[18]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan10~0_combout\);

-- Location: LC_X8_Y6_N4
\U1|NML|bl_max|LessThan10~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan10~0_combout\ = ((!\Con_80p_io[15]~13\ & ((!\Con_80p_io[13]~11\) # (!\Con_80p_io[14]~12\)))) # (!\Con_80p_io[16]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "07ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[14]~12\,
	datab => \Con_80p_io[13]~11\,
	datac => \Con_80p_io[15]~13\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan10~0_combout\);

-- Location: LC_X7_Y7_N1
\U1|CHX|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux4~1_combout\ = (\U1|NML|bl_min|Equal0~0_combout\ & (((\U1|NML|bl_max|LessThan10~0_combout\)) # (!\U1|NML|bl_val|LessThan10~0_combout\))) # (!\U1|NML|bl_min|Equal0~0_combout\ & ((\U1|NML|bl_val|LessThan10~0_combout\ & ((\Con_80p_io[33]~31\) # 
-- (!\U1|NML|bl_max|LessThan10~0_combout\))) # (!\U1|NML|bl_val|LessThan10~0_combout\ & (!\U1|NML|bl_max|LessThan10~0_combout\ & \Con_80p_io[33]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e7a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|Equal0~0_combout\,
	datab => \U1|NML|bl_val|LessThan10~0_combout\,
	datac => \U1|NML|bl_max|LessThan10~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux4~1_combout\);

-- Location: LC_X7_Y7_N4
\U1|CHX|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux4~0_combout\ = ((\Con_80p_io[25]~23\ & ((\Con_80p_io[26]~24\) # (\U1|NML|bl_val|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[26]~24\,
	datac => \U1|NML|bl_val|LessThan10~0_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux4~0_combout\);

-- Location: LC_X7_Y7_N5
\U1|CHX|Mux4~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux4~2_combout\ = (\U1|CHX|Mux4~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux4~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux4~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux4~2_combout\);

-- Location: LC_X8_Y6_N6
\U1|CHX|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux3~1_combout\ = (((\Con_80p_io[15]~13\ & \Con_80p_io[16]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Con_80p_io[15]~13\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux3~1_combout\);

-- Location: LC_X8_Y7_N1
\U1|CHX|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux3~0_combout\ = (\Con_80p_io[19]~17\ & ((\Con_80p_io[20]~18\) # ((\Con_80p_io[25]~23\ & \Con_80p_io[26]~24\)))) # (!\Con_80p_io[19]~17\ & (\Con_80p_io[25]~23\ & (\Con_80p_io[26]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[19]~17\,
	datab => \Con_80p_io[25]~23\,
	datac => \Con_80p_io[26]~24\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux3~0_combout\);

-- Location: LC_X7_Y7_N9
\U1|NML|bl_min|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|LessThan12~0_combout\ = (((!\Con_80p_io[10]~8\ & !\Con_80p_io[9]~7\)) # (!\Con_80p_io[12]~10\)) # (!\Con_80p_io[11]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "57ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[11]~9\,
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[9]~7\,
	datad => \Con_80p_io[12]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|LessThan12~0_combout\);

-- Location: LC_X8_Y7_N3
\U1|CHX|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux3~2_combout\ = (\U1|CHX|Mux3~1_combout\ & ((\U1|CHX|Mux3~0_combout\ & (!\U1|NML|bl_min|LessThan12~0_combout\)) # (!\U1|CHX|Mux3~0_combout\ & (\U1|NML|bl_min|LessThan12~0_combout\ & !\Con_80p_io[33]~31\)))) # (!\U1|CHX|Mux3~1_combout\ & 
-- (\U1|NML|bl_min|LessThan12~0_combout\ & ((!\Con_80p_io[33]~31\) # (!\U1|CHX|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CHX|Mux3~1_combout\,
	datab => \U1|CHX|Mux3~0_combout\,
	datac => \U1|NML|bl_min|LessThan12~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux3~2_combout\);

-- Location: LC_X8_Y7_N5
\U1|CHX|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux3~3_combout\ = (\Con_80p_io[25]~23\ & (((\U1|CHX|Mux3~0_combout\)))) # (!\Con_80p_io[25]~23\ & (!\U1|CHX|Mux3~2_combout\ & ((\U1|NML|bl_min|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CHX|Mux3~2_combout\,
	datab => \U1|CHX|Mux3~0_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux3~3_combout\);

-- Location: LC_X9_Y7_N8
\U1|NML|bl_min|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|Equal0~1_combout\ = ((\Con_80p_io[10]~8\ & (\Con_80p_io[11]~9\ & \Con_80p_io[12]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[12]~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|Equal0~1_combout\);

-- Location: LC_X10_Y7_N8
\U1|NML|bl_val|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan12~0_combout\ = (\Con_80p_io[19]~17\ & (\Con_80p_io[20]~18\ & ((\Con_80p_io[17]~15\) # (\Con_80p_io[18]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan12~0_combout\);

-- Location: LC_X9_Y7_N7
\U1|NML|bl_max|LessThan12~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_max|LessThan12~0_combout\ = (((!\Con_80p_io[14]~12\ & !\Con_80p_io[13]~11\)) # (!\Con_80p_io[15]~13\)) # (!\Con_80p_io[16]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[14]~12\,
	datab => \Con_80p_io[13]~11\,
	datac => \Con_80p_io[16]~14\,
	datad => \Con_80p_io[15]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_max|LessThan12~0_combout\);

-- Location: LC_X9_Y7_N2
\U1|CHX|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux2~1_combout\ = (\U1|NML|bl_min|Equal0~1_combout\ & (((\U1|NML|bl_max|LessThan12~0_combout\)) # (!\U1|NML|bl_val|LessThan12~0_combout\))) # (!\U1|NML|bl_min|Equal0~1_combout\ & ((\U1|NML|bl_val|LessThan12~0_combout\ & ((\Con_80p_io[33]~31\) # 
-- (!\U1|NML|bl_max|LessThan12~0_combout\))) # (!\U1|NML|bl_val|LessThan12~0_combout\ & (!\U1|NML|bl_max|LessThan12~0_combout\ & \Con_80p_io[33]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e7a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_min|Equal0~1_combout\,
	datab => \U1|NML|bl_val|LessThan12~0_combout\,
	datac => \U1|NML|bl_max|LessThan12~0_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux2~1_combout\);

-- Location: LC_X9_Y7_N4
\U1|CHX|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux2~0_combout\ = (\Con_80p_io[25]~23\ & ((\U1|NML|bl_val|LessThan12~0_combout\) # ((\Con_80p_io[26]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|NML|bl_val|LessThan12~0_combout\,
	datad => \Con_80p_io[26]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux2~0_combout\);

-- Location: LC_X9_Y7_N5
\U1|CHX|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux2~2_combout\ = (\U1|CHX|Mux2~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux2~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux2~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux2~2_combout\);

-- Location: LC_X11_Y7_N5
\U1|NML|bl_val|LessThan13~0\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_val|LessThan13~0_combout\ = ((\Con_80p_io[18]~16\ & (\Con_80p_io[19]~17\ & \Con_80p_io[20]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[18]~16\,
	datac => \Con_80p_io[19]~17\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_val|LessThan13~0_combout\);

-- Location: LC_X11_Y6_N2
\U1|CHX|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux0~0_combout\ = ((\Con_80p_io[15]~13\ & (\Con_80p_io[14]~12\ & \Con_80p_io[16]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Con_80p_io[15]~13\,
	datac => \Con_80p_io[14]~12\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux0~0_combout\);

-- Location: LC_X9_Y6_N9
\U1|NML|bl_min|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|NML|bl_min|Equal0~2_combout\ = (\Con_80p_io[12]~10\ & (\Con_80p_io[10]~8\ & (\Con_80p_io[11]~9\ & \Con_80p_io[9]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[12]~10\,
	datab => \Con_80p_io[10]~8\,
	datac => \Con_80p_io[11]~9\,
	datad => \Con_80p_io[9]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|NML|bl_min|Equal0~2_combout\);

-- Location: LC_X11_Y7_N7
\U1|CHX|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux1~1_combout\ = (\U1|NML|bl_val|LessThan13~0_combout\ & ((\U1|CHX|Mux0~0_combout\ & (!\U1|NML|bl_min|Equal0~2_combout\)) # (!\U1|CHX|Mux0~0_combout\ & ((\U1|NML|bl_min|Equal0~2_combout\) # (\Con_80p_io[33]~31\))))) # 
-- (!\U1|NML|bl_val|LessThan13~0_combout\ & ((\U1|NML|bl_min|Equal0~2_combout\) # ((\U1|CHX|Mux0~0_combout\ & \Con_80p_io[33]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7e78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_val|LessThan13~0_combout\,
	datab => \U1|CHX|Mux0~0_combout\,
	datac => \U1|NML|bl_min|Equal0~2_combout\,
	datad => \Con_80p_io[33]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux1~1_combout\);

-- Location: LC_X11_Y7_N1
\U1|CHX|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux1~0_combout\ = ((\Con_80p_io[25]~23\ & ((\U1|NML|bl_val|LessThan13~0_combout\) # (\Con_80p_io[26]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|NML|bl_val|LessThan13~0_combout\,
	datac => \Con_80p_io[26]~24\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux1~0_combout\);

-- Location: LC_X11_Y7_N4
\U1|CHX|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux1~2_combout\ = (\U1|CHX|Mux1~0_combout\) # ((!\Con_80p_io[25]~23\ & (\U1|CHX|Mux1~1_combout\ & \U1|NML|bl_min|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[25]~23\,
	datab => \U1|CHX|Mux1~1_combout\,
	datac => \U1|NML|bl_min|LessThan0~5_combout\,
	datad => \U1|CHX|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux1~2_combout\);

-- Location: LC_X11_Y6_N8
\U1|CHX|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux0~2_combout\ = (\Con_80p_io[13]~11\ & (\Con_80p_io[15]~13\ & (\Con_80p_io[14]~12\ & \Con_80p_io[16]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[13]~11\,
	datab => \Con_80p_io[15]~13\,
	datac => \Con_80p_io[14]~12\,
	datad => \Con_80p_io[16]~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux0~2_combout\);

-- Location: LC_X10_Y7_N9
\U1|CHX|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux0~1_combout\ = (\Con_80p_io[17]~15\ & (\Con_80p_io[19]~17\ & (\Con_80p_io[18]~16\ & \Con_80p_io[20]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[17]~15\,
	datab => \Con_80p_io[19]~17\,
	datac => \Con_80p_io[18]~16\,
	datad => \Con_80p_io[20]~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux0~1_combout\);

-- Location: LC_X11_Y7_N6
\U1|CHX|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux0~3_combout\ = (\Con_80p_io[33]~31\ & ((\U1|CHX|Mux0~1_combout\) # ((\U1|CHX|Mux0~2_combout\ & !\Con_80p_io[25]~23\)))) # (!\Con_80p_io[33]~31\ & (\U1|CHX|Mux0~1_combout\ & ((\U1|CHX|Mux0~2_combout\) # (\Con_80p_io[25]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[33]~31\,
	datab => \U1|CHX|Mux0~2_combout\,
	datac => \U1|CHX|Mux0~1_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux0~3_combout\);

-- Location: LC_X11_Y7_N0
\U1|CHX|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \U1|CHX|Mux0~4_combout\ = (\U1|CHX|Mux0~3_combout\ & (((\U1|NML|bl_min|LessThan0~5_combout\) # (\Con_80p_io[25]~23\)))) # (!\U1|CHX|Mux0~3_combout\ & (\Con_80p_io[26]~24\ & ((\Con_80p_io[25]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Con_80p_io[26]~24\,
	datab => \U1|NML|bl_min|LessThan0~5_combout\,
	datac => \U1|CHX|Mux0~3_combout\,
	datad => \Con_80p_io[25]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CHX|Mux0~4_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Gen_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Gen_i);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_A_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_A_i);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_B_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_B_i);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(1));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(4));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(5));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(6));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(7));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(8));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(2));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(3));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(4));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(5));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(6));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(7));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(0));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(4));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(5));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nLed_o(7));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(1));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(2));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(4));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(5));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(6));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_cpt_s(19),
	oe => VCC,
	padio => ww_nSeven_Seg_o(7));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(1));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(2));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(4));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(5));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(6));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(7));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(8));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(9));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(10));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(11));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(12));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(13));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(14));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(15));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(16));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(17));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(18));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(19));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(20));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(21));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(22));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(23));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(24));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_25p_io(25));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(5));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(6));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(7));

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(8));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(9));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(11));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(12));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(13));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(14));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(15));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(16));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(17));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(18));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(19));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Mezzanine_io(20));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(5));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(6));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(7));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(8));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(21));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(22));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(23));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(24));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(27));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(28));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(29));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(30));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(31));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(32));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(34));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(35));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(36));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(37));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(38));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(39));

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(40));

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux15~0_combout\,
	oe => VCC,
	padio => Con_80p_io(41));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux14~2_combout\,
	oe => VCC,
	padio => Con_80p_io(42));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux13~2_combout\,
	oe => VCC,
	padio => Con_80p_io(43));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux12~2_combout\,
	oe => VCC,
	padio => Con_80p_io(44));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux11~2_combout\,
	oe => VCC,
	padio => Con_80p_io(45));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux10~2_combout\,
	oe => VCC,
	padio => Con_80p_io(46));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux9~2_combout\,
	oe => VCC,
	padio => Con_80p_io(47));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[48]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux8~2_combout\,
	oe => VCC,
	padio => Con_80p_io(48));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[49]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux7~2_combout\,
	oe => VCC,
	padio => Con_80p_io(49));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[50]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux6~2_combout\,
	oe => VCC,
	padio => Con_80p_io(50));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[51]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux5~2_combout\,
	oe => VCC,
	padio => Con_80p_io(51));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[52]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux4~2_combout\,
	oe => VCC,
	padio => Con_80p_io(52));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[53]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux3~3_combout\,
	oe => VCC,
	padio => Con_80p_io(53));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[54]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux2~2_combout\,
	oe => VCC,
	padio => Con_80p_io(54));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[55]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux1~2_combout\,
	oe => VCC,
	padio => Con_80p_io(55));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[56]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|CHX|Mux0~4_combout\,
	oe => VCC,
	padio => Con_80p_io(56));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[57]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(57));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[58]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(58));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[59]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(59));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[60]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(60));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[61]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(61));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[62]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(62));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[63]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(63));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[64]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(64));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[65]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(65));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[66]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(66));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[67]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(67));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[68]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(68));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[69]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(69));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[70]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(70));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[71]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(71));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[72]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(72));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[73]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(73));

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[74]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(74));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[75]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(75));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[76]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(76));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[77]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(77));

-- Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[78]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(78));

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[79]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(79));
END structure;


