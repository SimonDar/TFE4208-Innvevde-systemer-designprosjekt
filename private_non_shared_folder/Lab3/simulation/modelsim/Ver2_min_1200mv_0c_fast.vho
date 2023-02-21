-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "02/20/2023 03:09:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StudentDesign IS
    PORT (
	DVO : OUT std_logic;
	DVI : IN std_logic;
	CLK : IN std_logic;
	RESET_N : IN std_logic;
	C : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(15 DOWNTO 0);
	RESULT_A : OUT std_logic_vector(15 DOWNTO 0);
	RESULT_B : OUT std_logic_vector(15 DOWNTO 0);
	STATUS : OUT std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	D : IN std_logic_vector(7 DOWNTO 0)
	);
END StudentDesign;

-- Design Ports Information
-- DVO	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[14]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[13]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[12]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[10]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[6]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_A[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[14]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[13]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[11]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[10]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[2]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[1]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT_B[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[6]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[5]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[2]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STATUS[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_N	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DVI	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF StudentDesign IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DVO : std_logic;
SIGNAL ww_DVI : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET_N : std_logic;
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESULT_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RESULT_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_STATUS : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \RESET_N~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \DVO~output_o\ : std_logic;
SIGNAL \RESULT_A[15]~output_o\ : std_logic;
SIGNAL \RESULT_A[14]~output_o\ : std_logic;
SIGNAL \RESULT_A[13]~output_o\ : std_logic;
SIGNAL \RESULT_A[12]~output_o\ : std_logic;
SIGNAL \RESULT_A[11]~output_o\ : std_logic;
SIGNAL \RESULT_A[10]~output_o\ : std_logic;
SIGNAL \RESULT_A[9]~output_o\ : std_logic;
SIGNAL \RESULT_A[8]~output_o\ : std_logic;
SIGNAL \RESULT_A[7]~output_o\ : std_logic;
SIGNAL \RESULT_A[6]~output_o\ : std_logic;
SIGNAL \RESULT_A[5]~output_o\ : std_logic;
SIGNAL \RESULT_A[4]~output_o\ : std_logic;
SIGNAL \RESULT_A[3]~output_o\ : std_logic;
SIGNAL \RESULT_A[2]~output_o\ : std_logic;
SIGNAL \RESULT_A[1]~output_o\ : std_logic;
SIGNAL \RESULT_A[0]~output_o\ : std_logic;
SIGNAL \RESULT_B[15]~output_o\ : std_logic;
SIGNAL \RESULT_B[14]~output_o\ : std_logic;
SIGNAL \RESULT_B[13]~output_o\ : std_logic;
SIGNAL \RESULT_B[12]~output_o\ : std_logic;
SIGNAL \RESULT_B[11]~output_o\ : std_logic;
SIGNAL \RESULT_B[10]~output_o\ : std_logic;
SIGNAL \RESULT_B[9]~output_o\ : std_logic;
SIGNAL \RESULT_B[8]~output_o\ : std_logic;
SIGNAL \RESULT_B[7]~output_o\ : std_logic;
SIGNAL \RESULT_B[6]~output_o\ : std_logic;
SIGNAL \RESULT_B[5]~output_o\ : std_logic;
SIGNAL \RESULT_B[4]~output_o\ : std_logic;
SIGNAL \RESULT_B[3]~output_o\ : std_logic;
SIGNAL \RESULT_B[2]~output_o\ : std_logic;
SIGNAL \RESULT_B[1]~output_o\ : std_logic;
SIGNAL \RESULT_B[0]~output_o\ : std_logic;
SIGNAL \STATUS[7]~output_o\ : std_logic;
SIGNAL \STATUS[6]~output_o\ : std_logic;
SIGNAL \STATUS[5]~output_o\ : std_logic;
SIGNAL \STATUS[4]~output_o\ : std_logic;
SIGNAL \STATUS[3]~output_o\ : std_logic;
SIGNAL \STATUS[2]~output_o\ : std_logic;
SIGNAL \STATUS[1]~output_o\ : std_logic;
SIGNAL \STATUS[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \RESET_N~input_o\ : std_logic;
SIGNAL \RESET_N~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst19~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst19~q\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst5|inst6|inst10~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst11~q\ : std_logic;
SIGNAL \inst5|inst6|inst16~q\ : std_logic;
SIGNAL \inst5|inst6|inst17~combout\ : std_logic;
SIGNAL \inst5|inst6|inst15~q\ : std_logic;
SIGNAL \inst5|inst1|inst7~combout\ : std_logic;
SIGNAL \inst5|inst1|inst1~q\ : std_logic;
SIGNAL \DVI~input_o\ : std_logic;
SIGNAL \inst5|inst|inst~feeder_combout\ : std_logic;
SIGNAL \inst5|inst|inst~q\ : std_logic;
SIGNAL \inst5|inst|inst1~feeder_combout\ : std_logic;
SIGNAL \inst5|inst|inst1~q\ : std_logic;
SIGNAL \inst5|inst1|inst8~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst~q\ : std_logic;
SIGNAL \inst5|inst1|inst14~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst14~1_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~14_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~13_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~12_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~11_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[5]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~10_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~9_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~8_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[7]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[8]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~7_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~6_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[10]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~5_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst[11]~feeder_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~4_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~3_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst2|Equal1~1_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \inst|inst4~combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst8~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst|inst2|inst3~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst10~combout\ : std_logic;
SIGNAL \inst|inst2|inst6~combout\ : std_logic;
SIGNAL \inst|inst1|inst10~combout\ : std_logic;
SIGNAL \inst|inst1|inst6~combout\ : std_logic;
SIGNAL \inst|inst|inst10~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \inst|inst|inst7~combout\ : std_logic;
SIGNAL \inst|inst|inst11~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\ : std_logic;
SIGNAL \inst|inst1|inst5~combout\ : std_logic;
SIGNAL \inst|inst1|inst7~combout\ : std_logic;
SIGNAL \inst|inst1|inst9~combout\ : std_logic;
SIGNAL \inst|inst1|inst11~combout\ : std_logic;
SIGNAL \inst|inst2|inst5~combout\ : std_logic;
SIGNAL \inst|inst2|inst7~combout\ : std_logic;
SIGNAL \inst|inst2|inst9~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \inst|inst3|inst7~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \inst|inst3|inst5~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\ : std_logic;
SIGNAL \inst|inst3|inst9~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[24]~17\ : std_logic;
SIGNAL \inst5|inst8|inst2[25]~19\ : std_logic;
SIGNAL \inst5|inst8|inst2[26]~21\ : std_logic;
SIGNAL \inst5|inst8|inst2[27]~22_combout\ : std_logic;
SIGNAL \inst|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst|inst|inst9~combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[36]~41\ : std_logic;
SIGNAL \inst5|inst8|inst2[37]~43\ : std_logic;
SIGNAL \inst5|inst8|inst2[38]~45\ : std_logic;
SIGNAL \inst5|inst8|inst2[39]~47\ : std_logic;
SIGNAL \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst5|inst1|inst11~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst11~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[27]~23\ : std_logic;
SIGNAL \inst5|inst8|inst2[28]~24_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[28]~25\ : std_logic;
SIGNAL \inst5|inst8|inst2[29]~26_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[26]~20_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[25]~18_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[29]~27\ : std_logic;
SIGNAL \inst5|inst8|inst2[30]~28_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[30]~29\ : std_logic;
SIGNAL \inst5|inst8|inst2[31]~31\ : std_logic;
SIGNAL \inst5|inst8|inst2[32]~33\ : std_logic;
SIGNAL \inst5|inst8|inst2[33]~35\ : std_logic;
SIGNAL \inst5|inst8|inst2[34]~37\ : std_logic;
SIGNAL \inst5|inst8|inst2[35]~39\ : std_logic;
SIGNAL \inst5|inst8|inst2[36]~40_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[37]~42_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[38]~44_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[39]~46_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[35]~38_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[31]~30_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[32]~32_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[33]~34_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[34]~36_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\ : std_logic;
SIGNAL \inst5|inst8|inst2[24]~16_combout\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~1_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~2_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\ : std_logic;
SIGNAL \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~0_combout\ : std_logic;
SIGNAL \inst5|inst6|inst2|inst10~combout\ : std_logic;
SIGNAL \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\ : std_logic_vector(40 DOWNTO 0);
SIGNAL \inst5|inst8|inst2\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst5|inst6|inst2|inst1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst6|inst|lpm_mult_component|auto_generated|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|inst8|inst|inst2\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|inst6|inst3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst6|inst2|inst\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst6|inst2|inst7\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|inst8|inst1|inst10\ : std_logic_vector(39 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DVO <= ww_DVO;
ww_DVI <= DVI;
ww_CLK <= CLK;
ww_RESET_N <= RESET_N;
ww_C <= C;
ww_A <= A;
RESULT_A <= ww_RESULT_A;
RESULT_B <= ww_RESULT_B;
STATUS <= ww_STATUS;
ww_B <= B;
ww_D <= D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~3\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~2\ & \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~1\ & 
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~0\);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~2\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2~3\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(0) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(1) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(2) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(3) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(4) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(5) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(6) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(7) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(8) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(9) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(10) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(11) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(12) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(13) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(14) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(15) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(16) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(17) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(18) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(19) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(20) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(21) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(22) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(23) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(24) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(25) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(26) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(27) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(28) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(29) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(30) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(31) <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \inst5|inst6|inst2|inst1\(15) & \inst5|inst6|inst2|inst1\(14) & \inst5|inst6|inst2|inst1\(13) & \inst5|inst6|inst2|inst1\(12) & \inst5|inst6|inst2|inst1\(11) & 
\inst5|inst6|inst2|inst1\(10) & \inst5|inst6|inst2|inst1\(9) & \inst5|inst6|inst2|inst1\(8) & \inst5|inst6|inst2|inst1\(7) & \inst5|inst6|inst2|inst1\(6) & \inst5|inst6|inst2|inst1\(5) & \inst5|inst6|inst2|inst1\(4) & 
\inst5|inst6|inst2|inst1\(3) & \inst5|inst6|inst2|inst1\(2) & \inst5|inst6|inst2|inst1\(1) & gnd & gnd);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\inst5|inst8|inst2\(39) & \inst5|inst8|inst2\(38) & \inst5|inst8|inst2\(37) & \inst5|inst8|inst2\(36) & \inst5|inst8|inst2\(35) & \inst5|inst8|inst2\(34) & 
\inst5|inst8|inst2\(33) & \inst5|inst8|inst2\(32) & \inst5|inst8|inst2\(31) & \inst5|inst8|inst2\(30) & \inst5|inst8|inst2\(29) & \inst5|inst8|inst2\(28) & \inst5|inst8|inst2\(27) & \inst5|inst8|inst2\(26) & \inst5|inst8|inst2\(25) & 
\inst5|inst8|inst2\(24) & gnd & gnd);

\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~0\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~1\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~2\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~3\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ <= \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAA_bus\ <= (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT21\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT20\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT19\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT18\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT17\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT16\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT15\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT14\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT13\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT12\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT11\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT10\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT9\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT8\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT7\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT6\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT5\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT4\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT3\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT2\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT1\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~dataout\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~13\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~12\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~11\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~10\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~9\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~8\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~7\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~6\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~5\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~4\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~3\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~2\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~1\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~0\);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\ <= (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~dataout\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~1\ & 
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~0\);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(0) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(1) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(2) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(3) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(4) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(5) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(6) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(7) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAA_bus\ <= (\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3) & gnd
& gnd);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAB_bus\ <= (\inst5|inst8|inst2\(39) & \inst5|inst8|inst2\(38) & \inst5|inst8|inst2\(37) & \inst5|inst8|inst2\(36) & \inst5|inst8|inst2\(35) & \inst5|inst8|inst2\(34) & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~dataout\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT14\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT15\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT16\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT17\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\(35);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\ <= (\inst5|inst8|inst2\(33) & \inst5|inst8|inst2\(32) & \inst5|inst8|inst2\(31) & \inst5|inst8|inst2\(30) & \inst5|inst8|inst2\(29) & \inst5|inst8|inst2\(28) & 
\inst5|inst8|inst2\(27) & \inst5|inst8|inst2\(26) & \inst5|inst8|inst2\(25) & \inst5|inst8|inst2\(24) & \inst5|inst8|inst2\(23) & \inst5|inst8|inst2\(22) & \inst5|inst8|inst2\(21) & \inst5|inst8|inst2\(20) & \inst5|inst8|inst2\(19) & 
\inst5|inst8|inst2\(18) & \inst5|inst8|inst2\(17) & \inst5|inst8|inst2\(16));

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\ <= (\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ & 
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ & \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3) & gnd
& gnd);

\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~0\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~dataout\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT1\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT2\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT3\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT4\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT5\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT6\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT7\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT8\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT9\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT10\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT11\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT12\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT13\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT14\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT15\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT16\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT17\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT18\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT19\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT20\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT21\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT22\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT23\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT24\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT25\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT26\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT27\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT28\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT29\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT30\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT31\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT32\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1~DATAOUT33\ <= \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\RESET_N~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET_N~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y47_N2
\DVO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst1|inst14~1_combout\,
	devoe => ww_devoe,
	o => \DVO~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\RESULT_A[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_A[15]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\RESULT_A[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(14),
	devoe => ww_devoe,
	o => \RESULT_A[14]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\RESULT_A[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(13),
	devoe => ww_devoe,
	o => \RESULT_A[13]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\RESULT_A[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(12),
	devoe => ww_devoe,
	o => \RESULT_A[12]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\RESULT_A[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(11),
	devoe => ww_devoe,
	o => \RESULT_A[11]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\RESULT_A[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(10),
	devoe => ww_devoe,
	o => \RESULT_A[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\RESULT_A[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(9),
	devoe => ww_devoe,
	o => \RESULT_A[9]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\RESULT_A[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(8),
	devoe => ww_devoe,
	o => \RESULT_A[8]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\RESULT_A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(7),
	devoe => ww_devoe,
	o => \RESULT_A[7]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\RESULT_A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(6),
	devoe => ww_devoe,
	o => \RESULT_A[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\RESULT_A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(5),
	devoe => ww_devoe,
	o => \RESULT_A[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\RESULT_A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(4),
	devoe => ww_devoe,
	o => \RESULT_A[4]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\RESULT_A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(3),
	devoe => ww_devoe,
	o => \RESULT_A[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\RESULT_A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(2),
	devoe => ww_devoe,
	o => \RESULT_A[2]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\RESULT_A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(1),
	devoe => ww_devoe,
	o => \RESULT_A[1]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\RESULT_A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst6|inst3\(0),
	devoe => ww_devoe,
	o => \RESULT_A[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\RESULT_B[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[15]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\RESULT_B[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[14]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\RESULT_B[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[13]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\RESULT_B[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[12]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\RESULT_B[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[11]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\RESULT_B[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[10]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\RESULT_B[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[9]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\RESULT_B[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[8]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\RESULT_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\RESULT_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[6]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\RESULT_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\RESULT_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\RESULT_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\RESULT_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\RESULT_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\RESULT_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RESULT_B[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\STATUS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[7]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\STATUS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\STATUS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\STATUS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\STATUS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\STATUS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[2]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\STATUS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[1]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\STATUS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STATUS[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y54_N18
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\ = !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0)
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X0_Y36_N15
\RESET_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_N,
	o => \RESET_N~input_o\);

-- Location: CLKCTRL_G4
\RESET_N~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET_N~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET_N~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y54_N20
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & ((GND) # 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\))) # (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\ $ 
-- (GND)))
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1)) # (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X20_Y54_N22
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\ & VCC)) 
-- # (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X20_Y54_N23
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X20_Y54_N24
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\ = \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\ $ (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	cin => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X20_Y54_N25
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X21_Y51_N18
\inst5|inst6|inst2|inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~0_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y51_N16
\inst5|inst6|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst19~0_combout\ = (\inst5|inst1|inst~q\) # ((\inst5|inst6|inst19~q\ & !\inst5|inst6|inst2|inst2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst~q\,
	datac => \inst5|inst6|inst19~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~0_combout\,
	combout => \inst5|inst6|inst19~0_combout\);

-- Location: FF_X21_Y51_N17
\inst5|inst6|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst19~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst19~q\);

-- Location: LCCOMB_X21_Y51_N14
\inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\ = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst19~q\,
	combout => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\);

-- Location: FF_X20_Y54_N19
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0));

-- Location: FF_X20_Y54_N21
\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst6|inst11~q\,
	ena => \inst5|inst6|inst7|lpm_counter_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X21_Y51_N22
\inst5|inst6|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst10~0_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst10~0_combout\);

-- Location: FF_X21_Y51_N23
\inst5|inst6|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst10~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst11~q\);

-- Location: FF_X21_Y51_N9
\inst5|inst6|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst11~q\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst16~q\);

-- Location: LCCOMB_X21_Y51_N8
\inst5|inst6|inst17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst17~combout\ = (\inst5|inst6|inst11~q\ & !\inst5|inst6|inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst16~q\,
	combout => \inst5|inst6|inst17~combout\);

-- Location: FF_X21_Y51_N21
\inst5|inst6|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst17~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst15~q\);

-- Location: LCCOMB_X21_Y51_N30
\inst5|inst1|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst7~combout\ = (\inst5|inst1|inst~q\) # ((!\inst5|inst6|inst15~q\ & \inst5|inst1|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst15~q\,
	datac => \inst5|inst1|inst1~q\,
	datad => \inst5|inst1|inst~q\,
	combout => \inst5|inst1|inst7~combout\);

-- Location: FF_X21_Y51_N31
\inst5|inst1|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst7~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst1~q\);

-- Location: IOIBUF_X0_Y51_N15
\DVI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DVI,
	o => \DVI~input_o\);

-- Location: LCCOMB_X21_Y51_N0
\inst5|inst|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst~feeder_combout\ = \DVI~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DVI~input_o\,
	combout => \inst5|inst|inst~feeder_combout\);

-- Location: FF_X21_Y51_N1
\inst5|inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst~q\);

-- Location: LCCOMB_X21_Y51_N10
\inst5|inst|inst1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst|inst1~feeder_combout\ = \inst5|inst|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst|inst~q\,
	combout => \inst5|inst|inst1~feeder_combout\);

-- Location: FF_X21_Y51_N11
\inst5|inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst|inst1~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst|inst1~q\);

-- Location: LCCOMB_X21_Y51_N2
\inst5|inst1|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst8~0_combout\ = (!\inst5|inst1|inst1~q\ & ((\inst5|inst1|inst~q\) # ((\inst5|inst|inst~q\ & !\inst5|inst|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst1|inst1~q\,
	datab => \inst5|inst|inst~q\,
	datac => \inst5|inst1|inst~q\,
	datad => \inst5|inst|inst1~q\,
	combout => \inst5|inst1|inst8~0_combout\);

-- Location: FF_X21_Y51_N3
\inst5|inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst1|inst8~0_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst1|inst~q\);

-- Location: LCCOMB_X21_Y51_N4
\inst5|inst1|inst14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst14~0_combout\ = (\inst5|inst1|inst1~q\ & (((\inst5|inst6|inst15~q\)))) # (!\inst5|inst1|inst1~q\ & ((\inst5|inst|inst1~q\) # ((!\inst5|inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1~q\,
	datab => \inst5|inst|inst~q\,
	datac => \inst5|inst1|inst1~q\,
	datad => \inst5|inst6|inst15~q\,
	combout => \inst5|inst1|inst14~0_combout\);

-- Location: LCCOMB_X21_Y51_N20
\inst5|inst1|inst14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst14~1_combout\ = (!\inst5|inst1|inst~q\ & \inst5|inst1|inst14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst1|inst~q\,
	datad => \inst5|inst1|inst14~0_combout\,
	combout => \inst5|inst1|inst14~1_combout\);

-- Location: LCCOMB_X20_Y54_N30
\inst5|inst6|inst2|inst2|Equal1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~14_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~14_combout\);

-- Location: LCCOMB_X21_Y54_N8
\inst5|inst6|inst2|inst7[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(1) = (\inst5|inst6|inst2|inst2|Equal1~14_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~14_combout\,
	datac => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(1));

-- Location: FF_X21_Y54_N7
\inst5|inst6|inst2|inst[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(1));

-- Location: LCCOMB_X21_Y54_N4
\inst5|inst6|inst2|inst1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(1) = (\inst5|inst6|inst2|inst\(1)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datab => \inst5|inst6|inst2|inst2|Equal1~14_combout\,
	datad => \inst5|inst6|inst2|inst\(1),
	combout => \inst5|inst6|inst2|inst1\(1));

-- Location: LCCOMB_X19_Y52_N6
\inst5|inst6|inst2|inst[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[2]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[2]~feeder_combout\);

-- Location: LCCOMB_X20_Y54_N8
\inst5|inst6|inst2|inst2|Equal1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~13_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~13_combout\);

-- Location: LCCOMB_X19_Y54_N8
\inst5|inst6|inst2|inst7[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(2) = (\inst5|inst6|inst2|inst2|Equal1~13_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~13_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(2));

-- Location: FF_X19_Y52_N7
\inst5|inst6|inst2|inst[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[2]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(2));

-- Location: LCCOMB_X19_Y54_N20
\inst5|inst6|inst2|inst1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(2) = (\inst5|inst6|inst2|inst\(2)) # ((\inst5|inst6|inst2|inst2|Equal1~13_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst\(2),
	datac => \inst5|inst6|inst2|inst2|Equal1~13_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(2));

-- Location: LCCOMB_X20_Y54_N2
\inst5|inst6|inst2|inst2|Equal1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~12_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~12_combout\);

-- Location: LCCOMB_X19_Y54_N0
\inst5|inst6|inst2|inst7[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(3) = (\inst5|inst6|inst2|inst2|Equal1~12_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~12_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(3));

-- Location: FF_X19_Y54_N1
\inst5|inst6|inst2|inst[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(3));

-- Location: LCCOMB_X19_Y54_N26
\inst5|inst6|inst2|inst1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(3) = (\inst5|inst6|inst2|inst\(3)) # ((\inst5|inst6|inst2|inst2|Equal1~12_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~12_combout\,
	datac => \inst5|inst6|inst2|inst\(3),
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(3));

-- Location: LCCOMB_X20_Y54_N0
\inst5|inst6|inst2|inst2|Equal1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~11_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~11_combout\);

-- Location: LCCOMB_X16_Y54_N26
\inst5|inst6|inst2|inst7[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(4) = (\inst5|inst6|inst2|inst2|Equal1~11_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~11_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(4));

-- Location: FF_X16_Y54_N27
\inst5|inst6|inst2|inst[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(4));

-- Location: LCCOMB_X19_Y54_N24
\inst5|inst6|inst2|inst1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(4) = (\inst5|inst6|inst2|inst\(4)) # ((\inst5|inst6|inst2|inst2|Equal1~11_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst\(4),
	datac => \inst5|inst6|inst2|inst2|Equal1~11_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(4));

-- Location: LCCOMB_X19_Y52_N24
\inst5|inst6|inst2|inst[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[5]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[5]~feeder_combout\);

-- Location: LCCOMB_X20_Y54_N14
\inst5|inst6|inst2|inst2|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~10_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~10_combout\);

-- Location: LCCOMB_X19_Y54_N14
\inst5|inst6|inst2|inst7[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(5) = (\inst5|inst6|inst2|inst2|Equal1~10_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~10_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(5));

-- Location: FF_X19_Y52_N25
\inst5|inst6|inst2|inst[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[5]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(5));

-- Location: LCCOMB_X19_Y54_N18
\inst5|inst6|inst2|inst1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(5) = (\inst5|inst6|inst2|inst\(5)) # ((\inst5|inst6|inst2|inst2|Equal1~10_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst\(5),
	datac => \inst5|inst6|inst2|inst2|Equal1~10_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(5));

-- Location: LCCOMB_X20_Y54_N28
\inst5|inst6|inst2|inst2|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~9_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~9_combout\);

-- Location: LCCOMB_X18_Y54_N2
\inst5|inst6|inst2|inst7[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(6) = (\inst5|inst6|inst2|inst2|Equal1~9_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~9_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(6));

-- Location: FF_X18_Y54_N3
\inst5|inst6|inst2|inst[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(6));

-- Location: LCCOMB_X19_Y54_N6
\inst5|inst6|inst2|inst1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(6) = (\inst5|inst6|inst2|inst\(6)) # ((\inst5|inst6|inst2|inst2|Equal1~9_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst\(6),
	datab => \inst5|inst6|inst2|inst2|Equal1~9_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(6));

-- Location: LCCOMB_X20_Y54_N6
\inst5|inst6|inst2|inst2|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~8_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & !\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~8_combout\);

-- Location: LCCOMB_X19_Y53_N0
\inst5|inst6|inst2|inst[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[7]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[7]~feeder_combout\);

-- Location: LCCOMB_X19_Y54_N16
\inst5|inst6|inst2|inst7[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(7) = (\inst5|inst6|inst2|inst2|Equal1~8_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~8_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(7));

-- Location: FF_X19_Y53_N1
\inst5|inst6|inst2|inst[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[7]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(7));

-- Location: LCCOMB_X19_Y54_N22
\inst5|inst6|inst2|inst1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(7) = (\inst5|inst6|inst2|inst\(7)) # ((\inst5|inst6|inst2|inst2|Equal1~8_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~8_combout\,
	datab => \inst5|inst6|inst2|inst\(7),
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(7));

-- Location: LCCOMB_X18_Y54_N12
\inst5|inst6|inst2|inst[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[8]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[8]~feeder_combout\);

-- Location: LCCOMB_X20_Y54_N16
\inst5|inst6|inst2|inst2|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~7_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~7_combout\);

-- Location: LCCOMB_X19_Y54_N4
\inst5|inst6|inst2|inst7[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(8) = (\inst5|inst6|inst2|inst2|Equal1~7_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst2|Equal1~7_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(8));

-- Location: FF_X18_Y54_N13
\inst5|inst6|inst2|inst[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[8]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(8));

-- Location: LCCOMB_X19_Y54_N10
\inst5|inst6|inst2|inst1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(8) = (\inst5|inst6|inst2|inst\(8)) # ((\inst5|inst6|inst2|inst2|Equal1~7_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst\(8),
	datab => \inst5|inst6|inst2|inst2|Equal1~7_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(8));

-- Location: LCCOMB_X20_Y54_N10
\inst5|inst6|inst2|inst2|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~6_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~6_combout\);

-- Location: LCCOMB_X21_Y54_N26
\inst5|inst6|inst2|inst7[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(9) = (\inst5|inst6|inst2|inst2|Equal1~6_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~6_combout\,
	datac => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(9));

-- Location: FF_X21_Y54_N17
\inst5|inst6|inst2|inst[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(9));

-- Location: LCCOMB_X21_Y54_N16
\inst5|inst6|inst2|inst1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(9) = (\inst5|inst6|inst2|inst\(9)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(9),
	datad => \inst5|inst6|inst2|inst2|Equal1~6_combout\,
	combout => \inst5|inst6|inst2|inst1\(9));

-- Location: LCCOMB_X17_Y54_N6
\inst5|inst6|inst2|inst[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[10]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[10]~feeder_combout\);

-- Location: LCCOMB_X21_Y51_N6
\inst5|inst6|inst2|inst2|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~5_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~5_combout\);

-- Location: LCCOMB_X18_Y54_N22
\inst5|inst6|inst2|inst7[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(10) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~5_combout\,
	combout => \inst5|inst6|inst2|inst7\(10));

-- Location: FF_X17_Y54_N7
\inst5|inst6|inst2|inst[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[10]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(10));

-- Location: LCCOMB_X18_Y54_N14
\inst5|inst6|inst2|inst1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(10) = (\inst5|inst6|inst2|inst\(10)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(10),
	datad => \inst5|inst6|inst2|inst2|Equal1~5_combout\,
	combout => \inst5|inst6|inst2|inst1\(10));

-- Location: LCCOMB_X17_Y54_N16
\inst5|inst6|inst2|inst[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst[11]~feeder_combout\ = \inst5|inst6|inst2|inst10~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst6|inst2|inst10~combout\,
	combout => \inst5|inst6|inst2|inst[11]~feeder_combout\);

-- Location: LCCOMB_X20_Y54_N12
\inst5|inst6|inst2|inst2|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~4_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~4_combout\);

-- Location: LCCOMB_X18_Y54_N24
\inst5|inst6|inst2|inst7[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(11) = (\inst5|inst6|inst2|inst2|Equal1~4_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst6|inst2|inst2|Equal1~4_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(11));

-- Location: FF_X17_Y54_N17
\inst5|inst6|inst2|inst[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst[11]~feeder_combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst2|inst7\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(11));

-- Location: LCCOMB_X18_Y54_N16
\inst5|inst6|inst2|inst1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(11) = (\inst5|inst6|inst2|inst\(11)) # ((\inst5|inst6|inst2|inst2|Equal1~4_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst\(11),
	datac => \inst5|inst6|inst2|inst2|Equal1~4_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(11));

-- Location: LCCOMB_X21_Y51_N28
\inst5|inst6|inst2|inst2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~3_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~3_combout\);

-- Location: LCCOMB_X18_Y52_N24
\inst5|inst6|inst2|inst7[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(12) = (\inst5|inst6|inst2|inst2|Equal1~3_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~3_combout\,
	datab => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(12));

-- Location: FF_X18_Y52_N25
\inst5|inst6|inst2|inst[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(12));

-- Location: LCCOMB_X19_Y54_N12
\inst5|inst6|inst2|inst1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(12) = (\inst5|inst6|inst2|inst\(12)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst11~q\,
	datac => \inst5|inst6|inst2|inst\(12),
	datad => \inst5|inst6|inst2|inst2|Equal1~3_combout\,
	combout => \inst5|inst6|inst2|inst1\(12));

-- Location: LCCOMB_X20_Y54_N26
\inst5|inst6|inst2|inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~2_combout\ = (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~2_combout\);

-- Location: LCCOMB_X20_Y52_N28
\inst5|inst6|inst2|inst7[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(13) = (\inst5|inst6|inst2|inst2|Equal1~2_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~2_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(13));

-- Location: FF_X20_Y52_N29
\inst5|inst6|inst2|inst[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(13));

-- Location: LCCOMB_X19_Y54_N30
\inst5|inst6|inst2|inst1[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(13) = (\inst5|inst6|inst2|inst\(13)) # ((\inst5|inst6|inst2|inst2|Equal1~2_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst\(13),
	datab => \inst5|inst6|inst2|inst2|Equal1~2_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(13));

-- Location: LCCOMB_X20_Y54_N4
\inst5|inst6|inst2|inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst2|Equal1~1_combout\ = (!\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0) & (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1) & 
-- (\inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2) & \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(0),
	datab => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|inst6|inst7|lpm_counter_component|auto_generated|counter_reg_bit\(3),
	combout => \inst5|inst6|inst2|inst2|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y54_N28
\inst5|inst6|inst2|inst7[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(14) = (\inst5|inst6|inst2|inst2|Equal1~1_combout\) # (\inst5|inst6|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst2|Equal1~1_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst7\(14));

-- Location: FF_X16_Y54_N29
\inst5|inst6|inst2|inst[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(14));

-- Location: LCCOMB_X19_Y54_N28
\inst5|inst6|inst2|inst1[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(14) = (\inst5|inst6|inst2|inst\(14)) # ((\inst5|inst6|inst2|inst2|Equal1~1_combout\ & !\inst5|inst6|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst\(14),
	datac => \inst5|inst6|inst2|inst2|Equal1~1_combout\,
	datad => \inst5|inst6|inst11~q\,
	combout => \inst5|inst6|inst2|inst1\(14));

-- Location: IOIBUF_X0_Y50_N15
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: LCCOMB_X21_Y50_N20
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3) = (!\C[2]~input_o\ & (!\C[3]~input_o\ & (!\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode4w\(3));

-- Location: LCCOMB_X21_Y50_N22
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\ = (!\C[2]~input_o\ & (!\C[3]~input_o\ & (!\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode21w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N16
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\ = (!\C[2]~input_o\ & (!\C[3]~input_o\ & (\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode31w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N18
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\ = (!\C[2]~input_o\ & (!\C[3]~input_o\ & (\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode41w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N4
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\ = (\C[2]~input_o\ & (!\C[3]~input_o\ & (!\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode51w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N14
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\ = (\C[2]~input_o\ & (!\C[3]~input_o\ & (!\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode61w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N28
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\ = (\C[2]~input_o\ & (!\C[3]~input_o\ & (\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode71w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N30
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\ = (\C[2]~input_o\ & (!\C[3]~input_o\ & (\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode81w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N24
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\ = (!\C[2]~input_o\ & (\C[3]~input_o\ & (!\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode91w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N6
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\ = (!\C[2]~input_o\ & (\C[3]~input_o\ & (!\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode102w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N8
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\ = (!\C[2]~input_o\ & (\C[3]~input_o\ & (\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode112w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N10
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\ = (!\C[2]~input_o\ & (\C[3]~input_o\ & (\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode122w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N0
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\ = (\C[2]~input_o\ & (\C[3]~input_o\ & (!\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode132w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N2
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\ = (\C[2]~input_o\ & (\C[3]~input_o\ & (!\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode142w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N12
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\ = (\C[2]~input_o\ & (\C[3]~input_o\ & (\C[1]~input_o\ & !\C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode152w[3]~0_combout\);

-- Location: LCCOMB_X21_Y50_N26
\inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\ = (\C[2]~input_o\ & (\C[3]~input_o\ & (\C[1]~input_o\ & \C[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[2]~input_o\,
	datab => \C[3]~input_o\,
	datac => \C[1]~input_o\,
	datad => \C[0]~input_o\,
	combout => \inst5|inst8|inst1|inst|lpm_decode_component|auto_generated|w_anode162w[3]~0_combout\);

-- Location: LCCOMB_X24_Y50_N12
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\ = (\inst5|inst8|inst2\(34) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\))) # (!\inst5|inst8|inst2\(34) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\ = CARRY((\inst5|inst8|inst2\(34)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(34),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\);

-- Location: LCCOMB_X24_Y50_N14
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\ = (\inst5|inst8|inst2\(35) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\ & VCC)) # (!\inst5|inst8|inst2\(35) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\ = CARRY((!\inst5|inst8|inst2\(35) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(35),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~69\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\);

-- Location: IOIBUF_X0_Y48_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X8_Y50_N12
\inst|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4~combout\ = (\A[15]~input_o\ & \C[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datad => \C[4]~input_o\,
	combout => \inst|inst4~combout\);

-- Location: IOIBUF_X0_Y49_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X0_Y46_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X8_Y51_N26
\inst|inst3|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst8~0_combout\ = (\C[4]~input_o\ & (!\A[0]~input_o\ & (\A[15]~input_o\ & !\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|inst3|inst8~0_combout\);

-- Location: IOIBUF_X0_Y55_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X8_Y51_N4
\inst|inst2|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst3~combout\ = \A[4]~input_o\ $ (((\A[15]~input_o\ & \C[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \A[15]~input_o\,
	datad => \C[4]~input_o\,
	combout => \inst|inst2|inst3~combout\);

-- Location: IOIBUF_X0_Y52_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X8_Y51_N24
\inst|inst3|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~combout\ = \A[3]~input_o\ $ (((\A[15]~input_o\ & \C[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \A[15]~input_o\,
	datad => \C[4]~input_o\,
	combout => \inst|inst3|inst~combout\);

-- Location: LCCOMB_X8_Y51_N10
\inst|inst2|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst10~combout\ = (\inst|inst3|inst8~0_combout\ & (!\A[2]~input_o\ & (\inst|inst2|inst3~combout\ & \inst|inst3|inst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst8~0_combout\,
	datab => \A[2]~input_o\,
	datac => \inst|inst2|inst3~combout\,
	datad => \inst|inst3|inst~combout\,
	combout => \inst|inst2|inst10~combout\);

-- Location: LCCOMB_X8_Y51_N8
\inst|inst2|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst6~combout\ = (\inst|inst2|inst10~combout\ & ((\inst|inst4~combout\ & (!\A[6]~input_o\ & !\A[5]~input_o\)) # (!\inst|inst4~combout\ & (\A[6]~input_o\ & \A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|inst2|inst10~combout\,
	combout => \inst|inst2|inst6~combout\);

-- Location: LCCOMB_X8_Y50_N18
\inst|inst1|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst10~combout\ = (\inst|inst2|inst6~combout\ & ((\inst|inst4~combout\ & (!\A[7]~input_o\ & !\A[8]~input_o\)) # (!\inst|inst4~combout\ & (\A[7]~input_o\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[7]~input_o\,
	datac => \A[8]~input_o\,
	datad => \inst|inst2|inst6~combout\,
	combout => \inst|inst1|inst10~combout\);

-- Location: LCCOMB_X8_Y50_N20
\inst|inst1|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst6~combout\ = (\inst|inst1|inst10~combout\ & ((\inst|inst4~combout\ & (!\A[10]~input_o\ & !\A[9]~input_o\)) # (!\inst|inst4~combout\ & (\A[10]~input_o\ & \A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \inst|inst1|inst10~combout\,
	combout => \inst|inst1|inst6~combout\);

-- Location: LCCOMB_X8_Y50_N10
\inst|inst|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst10~combout\ = (\inst|inst1|inst6~combout\ & ((\inst|inst4~combout\ & (!\A[12]~input_o\ & !\A[11]~input_o\)) # (!\inst|inst4~combout\ & (\A[12]~input_o\ & \A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[12]~input_o\,
	datac => \A[11]~input_o\,
	datad => \inst|inst1|inst6~combout\,
	combout => \inst|inst|inst10~combout\);

-- Location: IOIBUF_X0_Y45_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X8_Y50_N28
\inst|inst|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst7~combout\ = \A[14]~input_o\ $ (((\inst|inst|inst10~combout\ & (\A[13]~input_o\)) # (!\inst|inst|inst10~combout\ & ((\inst|inst4~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst10~combout\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \inst|inst4~combout\,
	combout => \inst|inst|inst7~combout\);

-- Location: LCCOMB_X8_Y50_N2
\inst|inst|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst11~combout\ = \A[12]~input_o\ $ (((\inst|inst1|inst6~combout\ & ((\A[11]~input_o\))) # (!\inst|inst1|inst6~combout\ & (\inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[12]~input_o\,
	datac => \A[11]~input_o\,
	datad => \inst|inst1|inst6~combout\,
	combout => \inst|inst|inst11~combout\);

-- Location: LCCOMB_X24_Y50_N16
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\ = (\inst5|inst8|inst2\(36) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\))) # (!\inst5|inst8|inst2\(36) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\ = CARRY((\inst5|inst8|inst2\(36)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(36),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~71\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\);

-- Location: LCCOMB_X25_Y50_N24
\inst5|inst8|inst1|inst10[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(36) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~72_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(36));

-- Location: LCCOMB_X8_Y50_N30
\inst|inst1|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst5~combout\ = \A[11]~input_o\ $ (\inst|inst1|inst6~combout\ $ (((\A[15]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \C[4]~input_o\,
	datac => \A[11]~input_o\,
	datad => \inst|inst1|inst6~combout\,
	combout => \inst|inst1|inst5~combout\);

-- Location: LCCOMB_X8_Y50_N4
\inst|inst1|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst7~combout\ = \A[10]~input_o\ $ (((\inst|inst1|inst10~combout\ & ((\A[9]~input_o\))) # (!\inst|inst1|inst10~combout\ & (\inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \inst|inst1|inst10~combout\,
	combout => \inst|inst1|inst7~combout\);

-- Location: LCCOMB_X8_Y50_N0
\inst|inst1|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst9~combout\ = \A[9]~input_o\ $ (\inst|inst1|inst10~combout\ $ (((\A[15]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \C[4]~input_o\,
	datac => \A[9]~input_o\,
	datad => \inst|inst1|inst10~combout\,
	combout => \inst|inst1|inst9~combout\);

-- Location: LCCOMB_X8_Y50_N14
\inst|inst1|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst11~combout\ = \A[8]~input_o\ $ (((\inst|inst2|inst6~combout\ & ((\A[7]~input_o\))) # (!\inst|inst2|inst6~combout\ & (\inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[7]~input_o\,
	datac => \A[8]~input_o\,
	datad => \inst|inst2|inst6~combout\,
	combout => \inst|inst1|inst11~combout\);

-- Location: LCCOMB_X8_Y51_N16
\inst|inst2|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst5~combout\ = \inst|inst2|inst6~combout\ $ (\A[7]~input_o\ $ (((\C[4]~input_o\ & \A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \A[15]~input_o\,
	datac => \inst|inst2|inst6~combout\,
	datad => \A[7]~input_o\,
	combout => \inst|inst2|inst5~combout\);

-- Location: LCCOMB_X8_Y51_N14
\inst|inst2|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst7~combout\ = \A[6]~input_o\ $ (((\inst|inst2|inst10~combout\ & ((\A[5]~input_o\))) # (!\inst|inst2|inst10~combout\ & (\inst|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~combout\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|inst2|inst10~combout\,
	combout => \inst|inst2|inst7~combout\);

-- Location: LCCOMB_X8_Y51_N6
\inst|inst2|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst9~combout\ = \A[5]~input_o\ $ (\inst|inst2|inst10~combout\ $ (((\C[4]~input_o\ & \A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|inst2|inst10~combout\,
	combout => \inst|inst2|inst9~combout\);

-- Location: DSPMULT_X22_Y50_N0
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAA_bus\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y50_N2
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: LCCOMB_X8_Y51_N20
\inst|inst3|inst7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst7~combout\ = \A[2]~input_o\ $ ((((!\A[1]~input_o\ & !\A[0]~input_o\)) # (!\inst|inst4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst|inst4~combout\,
	combout => \inst|inst3|inst7~combout\);

-- Location: LCCOMB_X23_Y50_N10
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ $ (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\ & !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\);

-- Location: LCCOMB_X8_Y51_N30
\inst|inst3|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst5~combout\ = \inst|inst3|inst~combout\ $ (((\A[2]~input_o\) # (!\inst|inst3|inst8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst8~0_combout\,
	datab => \inst|inst3|inst~combout\,
	datac => \A[2]~input_o\,
	combout => \inst|inst3|inst5~combout\);

-- Location: LCCOMB_X23_Y50_N12
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\) # (GND)))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ = CARRY((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~33\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\);

-- Location: LCCOMB_X24_Y51_N28
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ $ (\inst5|inst8|inst2\(26) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ & (\inst5|inst8|inst2\(26) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\ & ((\inst5|inst8|inst2\(26)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~32_combout\,
	datab => \inst5|inst8|inst2\(26),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\);

-- Location: LCCOMB_X24_Y51_N30
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\ = (\inst5|inst8|inst2\(27) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(27) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\ = CARRY((\inst5|inst8|inst2\(27) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\)) # (!\inst5|inst8|inst2\(27) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(27),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~34_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~53\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\);

-- Location: LCCOMB_X25_Y51_N14
\inst5|inst8|inst1|inst10[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(27) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~54_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(27));

-- Location: LCCOMB_X8_Y51_N2
\inst|inst3|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst9~0_combout\ = \A[1]~input_o\ $ (((\C[4]~input_o\ & (\A[0]~input_o\ & \A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[4]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|inst3|inst9~0_combout\);

-- Location: LCCOMB_X25_Y51_N16
\inst5|inst8|inst2[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[24]~16_combout\ = (\A[0]~input_o\ & ((VCC) # (!\inst5|inst8|inst1|inst10\(24))))
-- \inst5|inst8|inst2[24]~17\ = CARRY((!\inst5|inst8|inst1|inst10\(24) & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(24),
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \inst5|inst8|inst2[24]~16_combout\,
	cout => \inst5|inst8|inst2[24]~17\);

-- Location: LCCOMB_X25_Y51_N18
\inst5|inst8|inst2[25]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[25]~18_combout\ = (\inst|inst3|inst9~0_combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(25) & !\inst5|inst8|inst2[24]~17\)))) # (!\inst|inst3|inst9~0_combout\ & (GND))
-- \inst5|inst8|inst2[25]~19\ = CARRY((\inst5|inst8|inst1|inst10\(25) & ((!\inst5|inst8|inst2[24]~17\) # (!\inst|inst3|inst9~0_combout\))) # (!\inst5|inst8|inst1|inst10\(25) & (!\inst|inst3|inst9~0_combout\ & !\inst5|inst8|inst2[24]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(25),
	datab => \inst|inst3|inst9~0_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[24]~17\,
	combout => \inst5|inst8|inst2[25]~18_combout\,
	cout => \inst5|inst8|inst2[25]~19\);

-- Location: LCCOMB_X25_Y51_N20
\inst5|inst8|inst2[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[26]~20_combout\ = (\inst|inst3|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(26) & (!\inst5|inst8|inst2[25]~19\ & GND))) # (!\inst|inst3|inst7~combout\ & (((VCC) # (!\inst5|inst8|inst2[25]~19\)) # (!\inst5|inst8|inst1|inst10\(26))))
-- \inst5|inst8|inst2[26]~21\ = CARRY((\inst|inst3|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(26) & !\inst5|inst8|inst2[25]~19\)) # (!\inst|inst3|inst7~combout\ & ((!\inst5|inst8|inst2[25]~19\) # (!\inst5|inst8|inst1|inst10\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst7~combout\,
	datab => \inst5|inst8|inst1|inst10\(26),
	datad => VCC,
	cin => \inst5|inst8|inst2[25]~19\,
	combout => \inst5|inst8|inst2[26]~20_combout\,
	cout => \inst5|inst8|inst2[26]~21\);

-- Location: LCCOMB_X25_Y51_N22
\inst5|inst8|inst2[27]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[27]~22_combout\ = (\inst|inst3|inst5~combout\ & (GND)) # (!\inst|inst3|inst5~combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(27) & !\inst5|inst8|inst2[26]~21\))))
-- \inst5|inst8|inst2[27]~23\ = CARRY((\inst|inst3|inst5~combout\ & ((\inst5|inst8|inst1|inst10\(27)) # (!\inst5|inst8|inst2[26]~21\))) # (!\inst|inst3|inst5~combout\ & (\inst5|inst8|inst1|inst10\(27) & !\inst5|inst8|inst2[26]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst5~combout\,
	datab => \inst5|inst8|inst1|inst10\(27),
	datad => VCC,
	cin => \inst5|inst8|inst2[26]~21\,
	combout => \inst5|inst8|inst2[27]~22_combout\,
	cout => \inst5|inst8|inst2[27]~23\);

-- Location: LCCOMB_X8_Y50_N24
\inst|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst5~0_combout\ = (\inst|inst|inst10~combout\ & (\A[14]~input_o\ $ (!\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \A[13]~input_o\,
	datad => \inst|inst|inst10~combout\,
	combout => \inst|inst|inst5~0_combout\);

-- Location: LCCOMB_X8_Y50_N22
\inst|inst|inst5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst5~1_combout\ = (\inst|inst|inst5~0_combout\ & (\A[15]~input_o\ $ (((\A[13]~input_o\))))) # (!\inst|inst|inst5~0_combout\ & (\A[15]~input_o\ & (!\C[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \C[4]~input_o\,
	datac => \A[13]~input_o\,
	datad => \inst|inst|inst5~0_combout\,
	combout => \inst|inst|inst5~1_combout\);

-- Location: LCCOMB_X8_Y50_N8
\inst|inst|inst9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst9~combout\ = \A[13]~input_o\ $ (\inst|inst|inst10~combout\ $ (((\A[15]~input_o\ & \C[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \C[4]~input_o\,
	datac => \A[13]~input_o\,
	datad => \inst|inst|inst10~combout\,
	combout => \inst|inst|inst9~combout\);

-- Location: LCCOMB_X25_Y50_N8
\inst5|inst8|inst2[36]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[36]~40_combout\ = (\inst|inst|inst11~combout\ & (((VCC) # (!\inst5|inst8|inst2[35]~39\)) # (!\inst5|inst8|inst1|inst10\(36)))) # (!\inst|inst|inst11~combout\ & (!\inst5|inst8|inst1|inst10\(36) & (!\inst5|inst8|inst2[35]~39\ & GND)))
-- \inst5|inst8|inst2[36]~41\ = CARRY((\inst|inst|inst11~combout\ & ((!\inst5|inst8|inst2[35]~39\) # (!\inst5|inst8|inst1|inst10\(36)))) # (!\inst|inst|inst11~combout\ & (!\inst5|inst8|inst1|inst10\(36) & !\inst5|inst8|inst2[35]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst11~combout\,
	datab => \inst5|inst8|inst1|inst10\(36),
	datad => VCC,
	cin => \inst5|inst8|inst2[35]~39\,
	combout => \inst5|inst8|inst2[36]~40_combout\,
	cout => \inst5|inst8|inst2[36]~41\);

-- Location: LCCOMB_X25_Y50_N10
\inst5|inst8|inst2[37]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[37]~42_combout\ = (\inst|inst|inst9~combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(37) & !\inst5|inst8|inst2[36]~41\)))) # (!\inst|inst|inst9~combout\ & (GND))
-- \inst5|inst8|inst2[37]~43\ = CARRY((\inst5|inst8|inst1|inst10\(37) & ((!\inst5|inst8|inst2[36]~41\) # (!\inst|inst|inst9~combout\))) # (!\inst5|inst8|inst1|inst10\(37) & (!\inst|inst|inst9~combout\ & !\inst5|inst8|inst2[36]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(37),
	datab => \inst|inst|inst9~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[36]~41\,
	combout => \inst5|inst8|inst2[37]~42_combout\,
	cout => \inst5|inst8|inst2[37]~43\);

-- Location: LCCOMB_X25_Y50_N12
\inst5|inst8|inst2[38]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[38]~44_combout\ = (\inst|inst|inst7~combout\ & (((VCC) # (!\inst5|inst8|inst2[37]~43\)) # (!\inst5|inst8|inst1|inst10\(38)))) # (!\inst|inst|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(38) & (!\inst5|inst8|inst2[37]~43\ & GND)))
-- \inst5|inst8|inst2[38]~45\ = CARRY((\inst|inst|inst7~combout\ & ((!\inst5|inst8|inst2[37]~43\) # (!\inst5|inst8|inst1|inst10\(38)))) # (!\inst|inst|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(38) & !\inst5|inst8|inst2[37]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst7~combout\,
	datab => \inst5|inst8|inst1|inst10\(38),
	datad => VCC,
	cin => \inst5|inst8|inst2[37]~43\,
	combout => \inst5|inst8|inst2[38]~44_combout\,
	cout => \inst5|inst8|inst2[38]~45\);

-- Location: LCCOMB_X25_Y50_N14
\inst5|inst8|inst2[39]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[39]~46_combout\ = (\inst|inst|inst5~1_combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(39) & !\inst5|inst8|inst2[38]~45\)))) # (!\inst|inst|inst5~1_combout\ & (GND))
-- \inst5|inst8|inst2[39]~47\ = CARRY((\inst5|inst8|inst1|inst10\(39) & ((!\inst5|inst8|inst2[38]~45\) # (!\inst|inst|inst5~1_combout\))) # (!\inst5|inst8|inst1|inst10\(39) & (!\inst|inst|inst5~1_combout\ & !\inst5|inst8|inst2[38]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(39),
	datab => \inst|inst|inst5~1_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[38]~45\,
	combout => \inst5|inst8|inst2[39]~46_combout\,
	cout => \inst5|inst8|inst2[39]~47\);

-- Location: LCCOMB_X25_Y50_N16
\inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\ = !\inst5|inst8|inst2[39]~47\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|inst8|inst2[39]~47\,
	combout => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X21_Y51_N12
\inst5|inst1|inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst1|inst11~0_combout\ = (!\inst5|inst|inst1~q\ & (\inst5|inst|inst~q\ & (!\inst5|inst1|inst1~q\ & !\inst5|inst1|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst|inst1~q\,
	datab => \inst5|inst|inst~q\,
	datac => \inst5|inst1|inst1~q\,
	datad => \inst5|inst1|inst~q\,
	combout => \inst5|inst1|inst11~0_combout\);

-- Location: FF_X25_Y51_N23
\inst5|inst8|inst2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[27]~22_combout\,
	asdata => \inst5|inst8|inst1|inst10\(27),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(27));

-- Location: LCCOMB_X8_Y51_N28
\inst|inst2|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst11~combout\ = \inst|inst2|inst3~combout\ $ (((\inst|inst3|inst8~0_combout\ & (!\A[2]~input_o\ & \inst|inst3|inst~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst8~0_combout\,
	datab => \A[2]~input_o\,
	datac => \inst|inst2|inst3~combout\,
	datad => \inst|inst3|inst~combout\,
	combout => \inst|inst2|inst11~combout\);

-- Location: LCCOMB_X23_Y50_N14
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ $ (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\ & !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~35\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\);

-- Location: LCCOMB_X24_Y50_N0
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ $ (\inst5|inst8|inst2\(28) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ & (\inst5|inst8|inst2\(28) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\ & ((\inst5|inst8|inst2\(28)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~36_combout\,
	datab => \inst5|inst8|inst2\(28),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[27]~55\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\);

-- Location: LCCOMB_X25_Y51_N0
\inst5|inst8|inst1|inst10[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(28) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~56_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(28));

-- Location: LCCOMB_X25_Y51_N24
\inst5|inst8|inst2[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[28]~24_combout\ = (\inst|inst2|inst11~combout\ & (((VCC) # (!\inst5|inst8|inst2[27]~23\)) # (!\inst5|inst8|inst1|inst10\(28)))) # (!\inst|inst2|inst11~combout\ & (!\inst5|inst8|inst1|inst10\(28) & (!\inst5|inst8|inst2[27]~23\ & GND)))
-- \inst5|inst8|inst2[28]~25\ = CARRY((\inst|inst2|inst11~combout\ & ((!\inst5|inst8|inst2[27]~23\) # (!\inst5|inst8|inst1|inst10\(28)))) # (!\inst|inst2|inst11~combout\ & (!\inst5|inst8|inst1|inst10\(28) & !\inst5|inst8|inst2[27]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst11~combout\,
	datab => \inst5|inst8|inst1|inst10\(28),
	datad => VCC,
	cin => \inst5|inst8|inst2[27]~23\,
	combout => \inst5|inst8|inst2[28]~24_combout\,
	cout => \inst5|inst8|inst2[28]~25\);

-- Location: FF_X25_Y51_N25
\inst5|inst8|inst2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[28]~24_combout\,
	asdata => \inst5|inst8|inst1|inst10\(28),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(28));

-- Location: LCCOMB_X25_Y51_N26
\inst5|inst8|inst2[29]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[29]~26_combout\ = (\inst|inst2|inst9~combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(29) & !\inst5|inst8|inst2[28]~25\)))) # (!\inst|inst2|inst9~combout\ & (GND))
-- \inst5|inst8|inst2[29]~27\ = CARRY((\inst|inst2|inst9~combout\ & (\inst5|inst8|inst1|inst10\(29) & !\inst5|inst8|inst2[28]~25\)) # (!\inst|inst2|inst9~combout\ & ((\inst5|inst8|inst1|inst10\(29)) # (!\inst5|inst8|inst2[28]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst9~combout\,
	datab => \inst5|inst8|inst1|inst10\(29),
	datad => VCC,
	cin => \inst5|inst8|inst2[28]~25\,
	combout => \inst5|inst8|inst2[29]~26_combout\,
	cout => \inst5|inst8|inst2[29]~27\);

-- Location: FF_X25_Y51_N27
\inst5|inst8|inst2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[29]~26_combout\,
	asdata => \inst5|inst8|inst1|inst10\(29),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(29));

-- Location: DSPMULT_X22_Y51_N0
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y51_N2
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y51_N10
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\ & \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~dataout\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\);

-- Location: LCCOMB_X23_Y51_N12
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT19\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~1\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\);

-- Location: LCCOMB_X23_Y51_N14
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT2\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~3\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y51_N16
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT21\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~5\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\);

-- Location: LCCOMB_X23_Y51_N18
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT22\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~7\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\);

-- Location: LCCOMB_X23_Y51_N20
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT23\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~9\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\);

-- Location: LCCOMB_X23_Y51_N22
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT6\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~11\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\);

-- Location: LCCOMB_X24_Y52_N8
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\ = (\inst5|inst8|inst2\(0) & ((GND) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8)))) # (!\inst5|inst8|inst2\(0) & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8) $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\ = CARRY((\inst5|inst8|inst2\(0)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(0),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(8),
	datad => VCC,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\);

-- Location: LCCOMB_X25_Y52_N6
\inst5|inst8|inst|inst2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(0) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~0_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(0));

-- Location: FF_X25_Y52_N7
\inst5|inst8|inst2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(0),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(0));

-- Location: LCCOMB_X24_Y52_N10
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\ = (\inst5|inst8|inst2\(1) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\ & VCC)))) # 
-- (!\inst5|inst8|inst2\(1) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\ = CARRY((\inst5|inst8|inst2\(1) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\)) # (!\inst5|inst8|inst2\(1) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(1),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(9),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[0]~1\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X24_Y52_N6
\inst5|inst8|inst|inst2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(1) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\ & (\inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~2_combout\,
	datac => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst|inst2\(1));

-- Location: FF_X24_Y52_N7
\inst5|inst8|inst2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(1),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(1));

-- Location: LCCOMB_X24_Y52_N12
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10) $ (\inst5|inst8|inst2\(2) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10) & (\inst5|inst8|inst2\(2) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10) & ((\inst5|inst8|inst2\(2)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(10),
	datab => \inst5|inst8|inst2\(2),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[1]~3\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X25_Y52_N8
\inst5|inst8|inst|inst2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(2) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~4_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(2));

-- Location: FF_X25_Y52_N9
\inst5|inst8|inst2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(2),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(2));

-- Location: LCCOMB_X24_Y52_N14
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\ = (\inst5|inst8|inst2\(3) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\ & VCC)))) # 
-- (!\inst5|inst8|inst2\(3) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\ = CARRY((\inst5|inst8|inst2\(3) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\)) # (!\inst5|inst8|inst2\(3) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(3),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(11),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[2]~5\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X24_Y52_N4
\inst5|inst8|inst|inst2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(3) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\ & (\inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~6_combout\,
	datac => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst|inst2\(3));

-- Location: FF_X24_Y52_N5
\inst5|inst8|inst2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(3),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(3));

-- Location: LCCOMB_X24_Y52_N16
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\ = ((\inst5|inst8|inst2\(4) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\ = CARRY((\inst5|inst8|inst2\(4) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12)))) # (!\inst5|inst8|inst2\(4) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(4),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(12),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[3]~7\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X25_Y52_N2
\inst5|inst8|inst|inst2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(4) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~8_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(4));

-- Location: FF_X25_Y52_N3
\inst5|inst8|inst2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(4),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(4));

-- Location: LCCOMB_X24_Y52_N18
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & ((\inst5|inst8|inst2\(5) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\)) # (!\inst5|inst8|inst2\(5) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & ((\inst5|inst8|inst2\(5) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\ & VCC)) # (!\inst5|inst8|inst2\(5) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\) # 
-- (!\inst5|inst8|inst2\(5)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13) & (!\inst5|inst8|inst2\(5) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(13),
	datab => \inst5|inst8|inst2\(5),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[4]~9\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X24_Y52_N2
\inst5|inst8|inst|inst2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(5) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\ & (\inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~10_combout\,
	datac => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst|inst2\(5));

-- Location: FF_X24_Y52_N3
\inst5|inst8|inst2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(5),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(5));

-- Location: LCCOMB_X24_Y52_N20
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) $ (\inst5|inst8|inst2\(6) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) & (\inst5|inst8|inst2\(6) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14) & ((\inst5|inst8|inst2\(6)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(14),
	datab => \inst5|inst8|inst2\(6),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[5]~11\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X24_Y52_N0
\inst5|inst8|inst|inst2[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(6) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\ & (\inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~12_combout\,
	datac => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst|inst2\(6));

-- Location: FF_X24_Y52_N1
\inst5|inst8|inst2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(6),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(6));

-- Location: LCCOMB_X24_Y52_N22
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\ = (\inst5|inst8|inst2\(7) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\ & VCC)))) # 
-- (!\inst5|inst8|inst2\(7) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\ = CARRY((\inst5|inst8|inst2\(7) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\)) # (!\inst5|inst8|inst2\(7) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(7),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(15),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[6]~13\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X25_Y52_N20
\inst5|inst8|inst|inst2[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(7) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~14_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(7));

-- Location: FF_X25_Y52_N21
\inst5|inst8|inst2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(7),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(7));

-- Location: LCCOMB_X24_Y52_N24
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\ = ((\inst5|inst8|inst2\(8) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\ = CARRY((\inst5|inst8|inst2\(8) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16)))) # (!\inst5|inst8|inst2\(8) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(8),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(16),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[7]~15\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X25_Y52_N30
\inst5|inst8|inst|inst2[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(8) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~16_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(8));

-- Location: FF_X25_Y52_N31
\inst5|inst8|inst2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(8),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(8));

-- Location: LCCOMB_X24_Y52_N26
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & ((\inst5|inst8|inst2\(9) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\)) # (!\inst5|inst8|inst2\(9) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & ((\inst5|inst8|inst2\(9) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\ & VCC)) # (!\inst5|inst8|inst2\(9) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\) # 
-- (!\inst5|inst8|inst2\(9)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17) & (!\inst5|inst8|inst2\(9) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|w201w\(17),
	datab => \inst5|inst8|inst2\(9),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[8]~17\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X25_Y52_N0
\inst5|inst8|inst|inst2[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(9) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~18_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(9));

-- Location: FF_X25_Y52_N1
\inst5|inst8|inst2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(9),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(9));

-- Location: LCCOMB_X24_Y52_N28
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ $ (\inst5|inst8|inst2\(10) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ & (\inst5|inst8|inst2\(10) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\ & ((\inst5|inst8|inst2\(10)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~0_combout\,
	datab => \inst5|inst8|inst2\(10),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[9]~19\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X25_Y52_N14
\inst5|inst8|inst|inst2[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(10) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~20_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(10));

-- Location: FF_X25_Y52_N15
\inst5|inst8|inst2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(10),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(10));

-- Location: LCCOMB_X24_Y52_N30
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\ = (\inst5|inst8|inst2\(11) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(11) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\ = CARRY((\inst5|inst8|inst2\(11) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\)) # (!\inst5|inst8|inst2\(11) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(11),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[10]~21\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X25_Y52_N4
\inst5|inst8|inst|inst2[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(11) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~22_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(11));

-- Location: FF_X25_Y52_N5
\inst5|inst8|inst2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(11),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(11));

-- Location: LCCOMB_X24_Y51_N0
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ $ (\inst5|inst8|inst2\(12) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ & (\inst5|inst8|inst2\(12) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\ & ((\inst5|inst8|inst2\(12)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~4_combout\,
	datab => \inst5|inst8|inst2\(12),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[11]~23\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\);

-- Location: LCCOMB_X26_Y51_N8
\inst5|inst8|inst|inst2[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(12) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~24_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(12));

-- Location: FF_X26_Y51_N9
\inst5|inst8|inst2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(12),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(12));

-- Location: LCCOMB_X24_Y51_N2
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & ((\inst5|inst8|inst2\(13) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\)) # (!\inst5|inst8|inst2\(13) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & ((\inst5|inst8|inst2\(13) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\ & VCC)) # (!\inst5|inst8|inst2\(13) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\) # 
-- (!\inst5|inst8|inst2\(13)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\ & (!\inst5|inst8|inst2\(13) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~6_combout\,
	datab => \inst5|inst8|inst2\(13),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[12]~25\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\);

-- Location: LCCOMB_X26_Y51_N10
\inst5|inst8|inst|inst2[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(13) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~26_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(13));

-- Location: FF_X26_Y51_N11
\inst5|inst8|inst2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(13),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(13));

-- Location: LCCOMB_X24_Y51_N4
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\ = ((\inst5|inst8|inst2\(14) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\ = CARRY((\inst5|inst8|inst2\(14) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\))) # (!\inst5|inst8|inst2\(14) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(14),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[13]~27\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\);

-- Location: LCCOMB_X26_Y51_N12
\inst5|inst8|inst|inst2[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(14) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~28_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(14));

-- Location: FF_X26_Y51_N13
\inst5|inst8|inst2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(14),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(14));

-- Location: LCCOMB_X24_Y51_N6
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & ((\inst5|inst8|inst2\(15) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\)) # (!\inst5|inst8|inst2\(15) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & ((\inst5|inst8|inst2\(15) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\ & VCC)) # (!\inst5|inst8|inst2\(15) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\) # 
-- (!\inst5|inst8|inst2\(15)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\ & (!\inst5|inst8|inst2\(15) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~10_combout\,
	datab => \inst5|inst8|inst2\(15),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[14]~29\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\);

-- Location: LCCOMB_X26_Y51_N14
\inst5|inst8|inst|inst2[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(15) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~30_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(15));

-- Location: FF_X26_Y51_N15
\inst5|inst8|inst2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(15),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(15));

-- Location: LCCOMB_X24_Y51_N8
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\ = ((\inst5|inst8|inst2\(16) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\ = CARRY((\inst5|inst8|inst2\(16) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\))) # (!\inst5|inst8|inst2\(16) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(16),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[15]~31\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\);

-- Location: LCCOMB_X23_Y51_N4
\inst5|inst8|inst|inst2[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(16) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~32_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(16));

-- Location: FF_X23_Y51_N5
\inst5|inst8|inst2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(16),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(16));

-- Location: LCCOMB_X23_Y51_N24
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT7\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~13\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\);

-- Location: LCCOMB_X24_Y51_N10
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\ = (\inst5|inst8|inst2\(17) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(17) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\ = CARRY((\inst5|inst8|inst2\(17) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\)) # (!\inst5|inst8|inst2\(17) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(17),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[16]~33\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\);

-- Location: LCCOMB_X26_Y51_N4
\inst5|inst8|inst|inst2[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(17) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~34_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(17));

-- Location: FF_X26_Y51_N5
\inst5|inst8|inst2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(17),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(17));

-- Location: LCCOMB_X24_Y51_N12
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ $ (\inst5|inst8|inst2\(18) $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ & (\inst5|inst8|inst2\(18) & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ & ((\inst5|inst8|inst2\(18)) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\,
	datab => \inst5|inst8|inst2\(18),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[17]~35\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\);

-- Location: LCCOMB_X24_Y51_N14
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\ = (\inst5|inst8|inst2\(19) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(19) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\ = CARRY((\inst5|inst8|inst2\(19) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\)) # (!\inst5|inst8|inst2\(19) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(19),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~37\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\);

-- Location: LCCOMB_X24_Y51_N16
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\ = ((\inst5|inst8|inst2\(20) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\ = CARRY((\inst5|inst8|inst2\(20) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\))) # (!\inst5|inst8|inst2\(20) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(20),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~39\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\);

-- Location: LCCOMB_X24_Y51_N18
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & ((\inst5|inst8|inst2\(21) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\)) # (!\inst5|inst8|inst2\(21) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & ((\inst5|inst8|inst2\(21) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\ & VCC)) # (!\inst5|inst8|inst2\(21) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\) # 
-- (!\inst5|inst8|inst2\(21)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ & (!\inst5|inst8|inst2\(21) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\,
	datab => \inst5|inst8|inst2\(21),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~41\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\);

-- Location: LCCOMB_X24_Y51_N20
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\ = ((\inst5|inst8|inst2\(22) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\ = CARRY((\inst5|inst8|inst2\(22) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\))) # (!\inst5|inst8|inst2\(22) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(22),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~43\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\);

-- Location: LCCOMB_X24_Y51_N22
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & ((\inst5|inst8|inst2\(23) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\)) # (!\inst5|inst8|inst2\(23) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & ((\inst5|inst8|inst2\(23) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\ & VCC)) # (!\inst5|inst8|inst2\(23) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\) # 
-- (!\inst5|inst8|inst2\(23)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ & (!\inst5|inst8|inst2\(23) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\,
	datab => \inst5|inst8|inst2\(23),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~45\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\);

-- Location: LCCOMB_X24_Y51_N24
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\ = ((\inst5|inst8|inst2\(24) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\ = CARRY((\inst5|inst8|inst2\(24) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\))) # (!\inst5|inst8|inst2\(24) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(24),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~47\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\);

-- Location: LCCOMB_X24_Y51_N26
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & ((\inst5|inst8|inst2\(25) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\)) # (!\inst5|inst8|inst2\(25) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & ((\inst5|inst8|inst2\(25) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\ & VCC)) # (!\inst5|inst8|inst2\(25) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\) # 
-- (!\inst5|inst8|inst2\(25)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ & (!\inst5|inst8|inst2\(25) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\,
	datab => \inst5|inst8|inst2\(25),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~49\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~51\);

-- Location: LCCOMB_X25_Y51_N4
\inst5|inst8|inst1|inst10[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(26) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[26]~52_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(26));

-- Location: FF_X25_Y51_N21
\inst5|inst8|inst2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[26]~20_combout\,
	asdata => \inst5|inst8|inst1|inst10\(26),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(26));

-- Location: LCCOMB_X23_Y51_N26
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT26\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~15\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~16_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\);

-- Location: LCCOMB_X23_Y51_N28
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT9\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~17\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~18_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\);

-- Location: LCCOMB_X23_Y51_N30
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT10\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~19\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~20_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\);

-- Location: LCCOMB_X23_Y50_N0
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT11\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~21\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~22_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\);

-- Location: LCCOMB_X23_Y50_N2
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT12\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~23\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~24_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\);

-- Location: LCCOMB_X23_Y50_N4
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT31\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~25\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~26_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\);

-- Location: LCCOMB_X23_Y50_N6
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\ = ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ $ 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\)))) # (GND)
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT14\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~27\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~28_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\);

-- Location: LCCOMB_X23_Y50_N8
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & 
-- (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\ & VCC)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\)))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\) # (GND)))))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\ & 
-- !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\ & ((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out2~DATAOUT33\,
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~29\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~30_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~31\);

-- Location: LCCOMB_X25_Y51_N6
\inst5|inst8|inst1|inst10[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(25) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[25]~50_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(25));

-- Location: FF_X25_Y51_N19
\inst5|inst8|inst2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[25]~18_combout\,
	asdata => \inst5|inst8|inst1|inst10\(25),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(25));

-- Location: LCCOMB_X25_Y50_N18
\inst5|inst8|inst|inst2[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(23) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[23]~46_combout\,
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(23));

-- Location: FF_X25_Y50_N19
\inst5|inst8|inst2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(23),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(23));

-- Location: LCCOMB_X25_Y50_N20
\inst5|inst8|inst|inst2[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(22) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[22]~44_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(22));

-- Location: FF_X25_Y50_N21
\inst5|inst8|inst2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(22),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(22));

-- Location: LCCOMB_X26_Y51_N28
\inst5|inst8|inst|inst2[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(21) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[21]~42_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(21));

-- Location: FF_X26_Y51_N29
\inst5|inst8|inst2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(21),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(21));

-- Location: LCCOMB_X26_Y51_N22
\inst5|inst8|inst|inst2[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(20) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[20]~40_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(20));

-- Location: FF_X26_Y51_N23
\inst5|inst8|inst2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(20),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(20));

-- Location: LCCOMB_X26_Y51_N24
\inst5|inst8|inst|inst2[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(19) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[19]~38_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(19));

-- Location: FF_X26_Y51_N25
\inst5|inst8|inst2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(19),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(19));

-- Location: LCCOMB_X26_Y51_N2
\inst5|inst8|inst|inst2[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst|inst2\(18) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & 
-- \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[18]~36_combout\,
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	combout => \inst5|inst8|inst|inst2\(18));

-- Location: FF_X26_Y51_N3
\inst5|inst8|inst2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst|inst2\(18),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(18));

-- Location: LCCOMB_X23_Y50_N16
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\)) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\ & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\) # (GND)))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ = CARRY((!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT19\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~37\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\);

-- Location: LCCOMB_X24_Y50_N2
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & ((\inst5|inst8|inst2\(29) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\)) # (!\inst5|inst8|inst2\(29) & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\) # (GND))))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & ((\inst5|inst8|inst2\(29) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\ & VCC)) # (!\inst5|inst8|inst2\(29) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\) # 
-- (!\inst5|inst8|inst2\(29)))) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\ & (!\inst5|inst8|inst2\(29) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~38_combout\,
	datab => \inst5|inst8|inst2\(29),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[28]~57\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\);

-- Location: LCCOMB_X25_Y51_N2
\inst5|inst8|inst1|inst10[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(29) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~58_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(29));

-- Location: LCCOMB_X25_Y51_N28
\inst5|inst8|inst2[30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[30]~28_combout\ = (\inst|inst2|inst7~combout\ & (((VCC) # (!\inst5|inst8|inst2[29]~27\)) # (!\inst5|inst8|inst1|inst10\(30)))) # (!\inst|inst2|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(30) & (!\inst5|inst8|inst2[29]~27\ & GND)))
-- \inst5|inst8|inst2[30]~29\ = CARRY((\inst|inst2|inst7~combout\ & ((!\inst5|inst8|inst2[29]~27\) # (!\inst5|inst8|inst1|inst10\(30)))) # (!\inst|inst2|inst7~combout\ & (!\inst5|inst8|inst1|inst10\(30) & !\inst5|inst8|inst2[29]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|inst7~combout\,
	datab => \inst5|inst8|inst1|inst10\(30),
	datad => VCC,
	cin => \inst5|inst8|inst2[29]~27\,
	combout => \inst5|inst8|inst2[30]~28_combout\,
	cout => \inst5|inst8|inst2[30]~29\);

-- Location: FF_X25_Y51_N29
\inst5|inst8|inst2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[30]~28_combout\,
	asdata => \inst5|inst8|inst1|inst10\(30),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(30));

-- Location: LCCOMB_X23_Y50_N18
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ = (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ $ (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\ & VCC))
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\ = CARRY((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\ & !\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT20\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~39\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\,
	cout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\);

-- Location: LCCOMB_X24_Y50_N4
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\ = ((\inst5|inst8|inst2\(30) $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ $ 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\)))) # (GND)
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\ = CARRY((\inst5|inst8|inst2\(30) & ((!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\))) # (!\inst5|inst8|inst2\(30) & (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(30),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~40_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[29]~59\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\);

-- Location: LCCOMB_X25_Y51_N8
\inst5|inst8|inst1|inst10[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(30) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~60_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(30));

-- Location: LCCOMB_X25_Y51_N30
\inst5|inst8|inst2[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[31]~30_combout\ = (\inst|inst2|inst5~combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(31) & !\inst5|inst8|inst2[30]~29\)))) # (!\inst|inst2|inst5~combout\ & (GND))
-- \inst5|inst8|inst2[31]~31\ = CARRY((\inst5|inst8|inst1|inst10\(31) & ((!\inst5|inst8|inst2[30]~29\) # (!\inst|inst2|inst5~combout\))) # (!\inst5|inst8|inst1|inst10\(31) & (!\inst|inst2|inst5~combout\ & !\inst5|inst8|inst2[30]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(31),
	datab => \inst|inst2|inst5~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[30]~29\,
	combout => \inst5|inst8|inst2[31]~30_combout\,
	cout => \inst5|inst8|inst2[31]~31\);

-- Location: LCCOMB_X25_Y50_N0
\inst5|inst8|inst2[32]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[32]~32_combout\ = (\inst5|inst8|inst1|inst10\(32) & (\inst|inst1|inst11~combout\ & ((VCC) # (!\inst5|inst8|inst2[31]~31\)))) # (!\inst5|inst8|inst1|inst10\(32) & ((\inst|inst1|inst11~combout\) # ((!\inst5|inst8|inst2[31]~31\ & GND))))
-- \inst5|inst8|inst2[32]~33\ = CARRY((\inst5|inst8|inst1|inst10\(32) & (\inst|inst1|inst11~combout\ & !\inst5|inst8|inst2[31]~31\)) # (!\inst5|inst8|inst1|inst10\(32) & ((\inst|inst1|inst11~combout\) # (!\inst5|inst8|inst2[31]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(32),
	datab => \inst|inst1|inst11~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[31]~31\,
	combout => \inst5|inst8|inst2[32]~32_combout\,
	cout => \inst5|inst8|inst2[32]~33\);

-- Location: LCCOMB_X25_Y50_N2
\inst5|inst8|inst2[33]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[33]~34_combout\ = (\inst|inst1|inst9~combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(33) & !\inst5|inst8|inst2[32]~33\)))) # (!\inst|inst1|inst9~combout\ & (GND))
-- \inst5|inst8|inst2[33]~35\ = CARRY((\inst5|inst8|inst1|inst10\(33) & ((!\inst5|inst8|inst2[32]~33\) # (!\inst|inst1|inst9~combout\))) # (!\inst5|inst8|inst1|inst10\(33) & (!\inst|inst1|inst9~combout\ & !\inst5|inst8|inst2[32]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(33),
	datab => \inst|inst1|inst9~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[32]~33\,
	combout => \inst5|inst8|inst2[33]~34_combout\,
	cout => \inst5|inst8|inst2[33]~35\);

-- Location: LCCOMB_X25_Y50_N4
\inst5|inst8|inst2[34]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[34]~36_combout\ = (\inst5|inst8|inst1|inst10\(34) & (\inst|inst1|inst7~combout\ & ((VCC) # (!\inst5|inst8|inst2[33]~35\)))) # (!\inst5|inst8|inst1|inst10\(34) & ((\inst|inst1|inst7~combout\) # ((!\inst5|inst8|inst2[33]~35\ & GND))))
-- \inst5|inst8|inst2[34]~37\ = CARRY((\inst5|inst8|inst1|inst10\(34) & (\inst|inst1|inst7~combout\ & !\inst5|inst8|inst2[33]~35\)) # (!\inst5|inst8|inst1|inst10\(34) & ((\inst|inst1|inst7~combout\) # (!\inst5|inst8|inst2[33]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(34),
	datab => \inst|inst1|inst7~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[33]~35\,
	combout => \inst5|inst8|inst2[34]~36_combout\,
	cout => \inst5|inst8|inst2[34]~37\);

-- Location: LCCOMB_X25_Y50_N6
\inst5|inst8|inst2[35]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst2[35]~38_combout\ = (\inst|inst1|inst5~combout\ & ((VCC) # ((\inst5|inst8|inst1|inst10\(35) & !\inst5|inst8|inst2[34]~37\)))) # (!\inst|inst1|inst5~combout\ & (GND))
-- \inst5|inst8|inst2[35]~39\ = CARRY((\inst5|inst8|inst1|inst10\(35) & ((!\inst5|inst8|inst2[34]~37\) # (!\inst|inst1|inst5~combout\))) # (!\inst5|inst8|inst1|inst10\(35) & (!\inst|inst1|inst5~combout\ & !\inst5|inst8|inst2[34]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst10\(35),
	datab => \inst|inst1|inst5~combout\,
	datad => VCC,
	cin => \inst5|inst8|inst2[34]~37\,
	combout => \inst5|inst8|inst2[35]~38_combout\,
	cout => \inst5|inst8|inst2[35]~39\);

-- Location: FF_X25_Y50_N9
\inst5|inst8|inst2[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[36]~40_combout\,
	asdata => \inst5|inst8|inst1|inst10\(36),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(36));

-- Location: LCCOMB_X24_Y50_N18
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\ = (\inst5|inst8|inst2\(37) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\ & VCC)) # (!\inst5|inst8|inst2\(37) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\ = CARRY((!\inst5|inst8|inst2\(37) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(37),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[36]~73\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\);

-- Location: LCCOMB_X25_Y50_N26
\inst5|inst8|inst1|inst10[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(37) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~74_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(37));

-- Location: FF_X25_Y50_N11
\inst5|inst8|inst2[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[37]~42_combout\,
	asdata => \inst5|inst8|inst1|inst10\(37),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(37));

-- Location: LCCOMB_X24_Y50_N20
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\ = (\inst5|inst8|inst2\(38) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\))) # (!\inst5|inst8|inst2\(38) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\ = CARRY((\inst5|inst8|inst2\(38)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(38),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[37]~75\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\);

-- Location: LCCOMB_X25_Y50_N28
\inst5|inst8|inst1|inst10[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(38) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~76_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(38));

-- Location: FF_X25_Y50_N13
\inst5|inst8|inst2[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[38]~44_combout\,
	asdata => \inst5|inst8|inst1|inst10\(38),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(38));

-- Location: LCCOMB_X24_Y50_N22
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\ = (\inst5|inst8|inst2\(39) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\ & VCC)) # (!\inst5|inst8|inst2\(39) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\ = CARRY((!\inst5|inst8|inst2\(39) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst2\(39),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[38]~77\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\);

-- Location: LCCOMB_X25_Y50_N22
\inst5|inst8|inst1|inst10[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(39) = (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ & \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~78_combout\,
	combout => \inst5|inst8|inst1|inst10\(39));

-- Location: FF_X25_Y50_N15
\inst5|inst8|inst2[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[39]~46_combout\,
	asdata => \inst5|inst8|inst1|inst10\(39),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(39));

-- Location: LCCOMB_X24_Y50_N24
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\ = \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[39]~79\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\);

-- Location: LCCOMB_X25_Y50_N30
\inst5|inst8|inst1|inst10[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(35) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[35]~70_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(35));

-- Location: FF_X25_Y50_N7
\inst5|inst8|inst2[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[35]~38_combout\,
	asdata => \inst5|inst8|inst1|inst10\(35),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(35));

-- Location: LCCOMB_X23_Y50_N20
\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ = \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\ $ (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|mac_out4~DATAOUT21\,
	cin => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~41\,
	combout => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\);

-- Location: LCCOMB_X24_Y50_N6
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\ = (\inst5|inst8|inst2\(31) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\)) # (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\ & 
-- VCC)))) # (!\inst5|inst8|inst2\(31) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & ((\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\) # (GND))) # 
-- (!\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\))))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\ = CARRY((\inst5|inst8|inst2\(31) & (\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\ & 
-- !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\)) # (!\inst5|inst8|inst2\(31) & ((\inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\) # 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(31),
	datab => \inst5|inst8|inst1|inst6|lpm_mult_component|auto_generated|op_1~42_combout\,
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[30]~61\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\);

-- Location: LCCOMB_X25_Y51_N10
\inst5|inst8|inst1|inst10[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(31) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~62_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(31));

-- Location: FF_X25_Y51_N31
\inst5|inst8|inst2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[31]~30_combout\,
	asdata => \inst5|inst8|inst1|inst10\(31),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(31));

-- Location: LCCOMB_X24_Y50_N8
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\ = (\inst5|inst8|inst2\(32) & ((GND) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\))) # (!\inst5|inst8|inst2\(32) & 
-- (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\ $ (GND)))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\ = CARRY((\inst5|inst8|inst2\(32)) # (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(32),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[31]~63\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\);

-- Location: LCCOMB_X24_Y50_N30
\inst5|inst8|inst1|inst10[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(32) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~64_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(32));

-- Location: FF_X25_Y50_N1
\inst5|inst8|inst2[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[32]~32_combout\,
	asdata => \inst5|inst8|inst1|inst10\(32),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(32));

-- Location: LCCOMB_X24_Y50_N10
\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\ = (\inst5|inst8|inst2\(33) & (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\ & VCC)) # (!\inst5|inst8|inst2\(33) & 
-- (!\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\))
-- \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\ = CARRY((!\inst5|inst8|inst2\(33) & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst2\(33),
	datad => VCC,
	cin => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[32]~65\,
	combout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\,
	cout => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~67\);

-- Location: LCCOMB_X24_Y50_N28
\inst5|inst8|inst1|inst10[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(33) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[33]~66_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(33));

-- Location: FF_X25_Y50_N3
\inst5|inst8|inst2[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[33]~34_combout\,
	asdata => \inst5|inst8|inst1|inst10\(33),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(33));

-- Location: LCCOMB_X24_Y50_N26
\inst5|inst8|inst1|inst10[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(34) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[34]~68_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(34));

-- Location: FF_X25_Y50_N5
\inst5|inst8|inst2[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[34]~36_combout\,
	asdata => \inst5|inst8|inst1|inst10\(34),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(34));

-- Location: LCCOMB_X25_Y51_N12
\inst5|inst8|inst1|inst10[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst8|inst1|inst10\(24) = (\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\ & !\inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[24]~48_combout\,
	datad => \inst5|inst8|inst1|inst7|lpm_add_sub_component|auto_generated|result_int[40]~80_combout\,
	combout => \inst5|inst8|inst1|inst10\(24));

-- Location: FF_X25_Y51_N17
\inst5|inst8|inst2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst8|inst2[24]~16_combout\,
	asdata => \inst5|inst8|inst1|inst10\(24),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => \inst5|inst8|inst5|lpm_compare_component|auto_generated|op_1~0_combout\,
	ena => \inst5|inst1|inst11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst8|inst2\(24));

-- Location: DSPMULT_X22_Y54_N0
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y54_N2
\inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst5|inst6|inst|lpm_mult_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X21_Y54_N28
\inst5|inst6|inst2|inst10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~1_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(29) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(24) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(28) & 
-- !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(29),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(24),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(28),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(31),
	combout => \inst5|inst6|inst2|inst10~1_combout\);

-- Location: LCCOMB_X21_Y54_N10
\inst5|inst6|inst2|inst10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~2_combout\ = (\inst5|inst6|inst2|inst10~1_combout\ & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(25) & !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst10~1_combout\,
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(25),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(30),
	combout => \inst5|inst6|inst2|inst10~2_combout\);

-- Location: LCCOMB_X21_Y54_N20
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\ = (((!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(20)) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(19))) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(16))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(12),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(16),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(19),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(20),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\);

-- Location: LCCOMB_X21_Y54_N30
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\ = (((!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(9)) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(15))) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(22))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(11),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(22),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(15),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(9),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\);

-- Location: LCCOMB_X21_Y54_N0
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\ = ((\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\) # ((\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(13)))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(10),
	datab => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~4_combout\,
	datac => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~5_combout\,
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(13),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\);

-- Location: LCCOMB_X21_Y54_N12
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(3) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(4) & 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(0) & !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(3),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(4),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(0),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(7),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\);

-- Location: LCCOMB_X21_Y54_N24
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\ = (((!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(17)) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(14))) # 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(21))) # (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(18),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(21),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(14),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(17),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\);

-- Location: LCCOMB_X21_Y54_N2
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\ = (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(6) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(2) & 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(8) & !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(6),
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(2),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(8),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(1),
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\);

-- Location: LCCOMB_X21_Y54_N22
\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\ = (\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\) # ((\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\ & 
-- (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(5) & \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~2_combout\,
	datab => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~0_combout\,
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(5),
	datad => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~1_combout\,
	combout => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\);

-- Location: LCCOMB_X21_Y54_N18
\inst5|inst6|inst2|inst10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~0_combout\ = (!\inst5|inst6|inst11~q\ & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(27) & (!\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(23) & 
-- !\inst5|inst6|inst|lpm_mult_component|auto_generated|result\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datab => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(27),
	datac => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(23),
	datad => \inst5|inst6|inst|lpm_mult_component|auto_generated|result\(26),
	combout => \inst5|inst6|inst2|inst10~0_combout\);

-- Location: LCCOMB_X21_Y54_N6
\inst5|inst6|inst2|inst10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst10~combout\ = (\inst5|inst6|inst2|inst10~2_combout\ & (\inst5|inst6|inst2|inst10~0_combout\ & ((\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\) # 
-- (\inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst2|inst10~2_combout\,
	datab => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~6_combout\,
	datac => \inst5|inst6|inst1|lpm_compare_component|auto_generated|aleb~3_combout\,
	datad => \inst5|inst6|inst2|inst10~0_combout\,
	combout => \inst5|inst6|inst2|inst10~combout\);

-- Location: LCCOMB_X20_Y51_N28
\inst5|inst6|inst2|inst7[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst7\(15) = (\inst5|inst6|inst11~q\) # (\inst5|inst6|inst2|inst2|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~0_combout\,
	combout => \inst5|inst6|inst2|inst7\(15));

-- Location: FF_X20_Y51_N29
\inst5|inst6|inst2|inst[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst10~combout\,
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst2|inst7\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst2|inst\(15));

-- Location: LCCOMB_X21_Y51_N24
\inst5|inst6|inst2|inst1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6|inst2|inst1\(15) = (\inst5|inst6|inst2|inst\(15)) # ((!\inst5|inst6|inst11~q\ & \inst5|inst6|inst2|inst2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst6|inst2|inst\(15),
	datac => \inst5|inst6|inst11~q\,
	datad => \inst5|inst6|inst2|inst2|Equal1~0_combout\,
	combout => \inst5|inst6|inst2|inst1\(15));

-- Location: FF_X21_Y51_N25
\inst5|inst6|inst3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(15),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(14));

-- Location: FF_X19_Y54_N29
\inst5|inst6|inst3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(14),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(13));

-- Location: FF_X19_Y54_N31
\inst5|inst6|inst3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(13),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(12));

-- Location: FF_X19_Y54_N13
\inst5|inst6|inst3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(12),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(11));

-- Location: FF_X19_Y54_N7
\inst5|inst6|inst3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst1\(11),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(10));

-- Location: FF_X19_Y54_N17
\inst5|inst6|inst3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst1\(10),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(9));

-- Location: FF_X19_Y54_N11
\inst5|inst6|inst3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst1\(9),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(8));

-- Location: FF_X19_Y54_N5
\inst5|inst6|inst3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst1\(8),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(7));

-- Location: FF_X19_Y54_N23
\inst5|inst6|inst3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(7),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(6));

-- Location: FF_X19_Y54_N9
\inst5|inst6|inst3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst1\(6),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(5));

-- Location: FF_X19_Y54_N19
\inst5|inst6|inst3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(5),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(4));

-- Location: FF_X19_Y54_N25
\inst5|inst6|inst3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(4),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(3));

-- Location: FF_X19_Y54_N27
\inst5|inst6|inst3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(3),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(2));

-- Location: FF_X19_Y54_N21
\inst5|inst6|inst3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5|inst6|inst2|inst1\(2),
	clrn => \RESET_N~inputclkctrl_outclk\,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(1));

-- Location: FF_X19_Y54_N15
\inst5|inst6|inst3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst5|inst6|inst2|inst1\(1),
	clrn => \RESET_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst5|inst6|inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst6|inst3\(0));

-- Location: IOIBUF_X115_Y37_N8
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y66_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X115_Y18_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X111_Y73_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X9_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: IOIBUF_X115_Y56_N22
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

ww_DVO <= \DVO~output_o\;

ww_RESULT_A(15) <= \RESULT_A[15]~output_o\;

ww_RESULT_A(14) <= \RESULT_A[14]~output_o\;

ww_RESULT_A(13) <= \RESULT_A[13]~output_o\;

ww_RESULT_A(12) <= \RESULT_A[12]~output_o\;

ww_RESULT_A(11) <= \RESULT_A[11]~output_o\;

ww_RESULT_A(10) <= \RESULT_A[10]~output_o\;

ww_RESULT_A(9) <= \RESULT_A[9]~output_o\;

ww_RESULT_A(8) <= \RESULT_A[8]~output_o\;

ww_RESULT_A(7) <= \RESULT_A[7]~output_o\;

ww_RESULT_A(6) <= \RESULT_A[6]~output_o\;

ww_RESULT_A(5) <= \RESULT_A[5]~output_o\;

ww_RESULT_A(4) <= \RESULT_A[4]~output_o\;

ww_RESULT_A(3) <= \RESULT_A[3]~output_o\;

ww_RESULT_A(2) <= \RESULT_A[2]~output_o\;

ww_RESULT_A(1) <= \RESULT_A[1]~output_o\;

ww_RESULT_A(0) <= \RESULT_A[0]~output_o\;

ww_RESULT_B(15) <= \RESULT_B[15]~output_o\;

ww_RESULT_B(14) <= \RESULT_B[14]~output_o\;

ww_RESULT_B(13) <= \RESULT_B[13]~output_o\;

ww_RESULT_B(12) <= \RESULT_B[12]~output_o\;

ww_RESULT_B(11) <= \RESULT_B[11]~output_o\;

ww_RESULT_B(10) <= \RESULT_B[10]~output_o\;

ww_RESULT_B(9) <= \RESULT_B[9]~output_o\;

ww_RESULT_B(8) <= \RESULT_B[8]~output_o\;

ww_RESULT_B(7) <= \RESULT_B[7]~output_o\;

ww_RESULT_B(6) <= \RESULT_B[6]~output_o\;

ww_RESULT_B(5) <= \RESULT_B[5]~output_o\;

ww_RESULT_B(4) <= \RESULT_B[4]~output_o\;

ww_RESULT_B(3) <= \RESULT_B[3]~output_o\;

ww_RESULT_B(2) <= \RESULT_B[2]~output_o\;

ww_RESULT_B(1) <= \RESULT_B[1]~output_o\;

ww_RESULT_B(0) <= \RESULT_B[0]~output_o\;

ww_STATUS(7) <= \STATUS[7]~output_o\;

ww_STATUS(6) <= \STATUS[6]~output_o\;

ww_STATUS(5) <= \STATUS[5]~output_o\;

ww_STATUS(4) <= \STATUS[4]~output_o\;

ww_STATUS(3) <= \STATUS[3]~output_o\;

ww_STATUS(2) <= \STATUS[2]~output_o\;

ww_STATUS(1) <= \STATUS[1]~output_o\;

ww_STATUS(0) <= \STATUS[0]~output_o\;
END structure;


