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

-- DATE "02/16/2023 19:05:53"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Krets_12 IS
    PORT (
	CO : OUT std_logic;
	EN2 : IN std_logic;
	DI0 : IN std_logic;
	EN1 : IN std_logic;
	DI1 : IN std_logic;
	DI2 : IN std_logic;
	DI3 : IN std_logic;
	DO3 : OUT std_logic;
	DO2 : OUT std_logic;
	DO1 : OUT std_logic;
	DO0 : OUT std_logic
	);
END Krets_12;

-- Design Ports Information
-- CO	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DO3	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DO2	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DO1	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DO0	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN2	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DI0	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DI1	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN1	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DI2	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DI3	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Krets_12 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CO : std_logic;
SIGNAL ww_EN2 : std_logic;
SIGNAL ww_DI0 : std_logic;
SIGNAL ww_EN1 : std_logic;
SIGNAL ww_DI1 : std_logic;
SIGNAL ww_DI2 : std_logic;
SIGNAL ww_DI3 : std_logic;
SIGNAL ww_DO3 : std_logic;
SIGNAL ww_DO2 : std_logic;
SIGNAL ww_DO1 : std_logic;
SIGNAL ww_DO0 : std_logic;
SIGNAL \CO~output_o\ : std_logic;
SIGNAL \DO3~output_o\ : std_logic;
SIGNAL \DO2~output_o\ : std_logic;
SIGNAL \DO1~output_o\ : std_logic;
SIGNAL \DO0~output_o\ : std_logic;
SIGNAL \EN1~input_o\ : std_logic;
SIGNAL \DI3~input_o\ : std_logic;
SIGNAL \DI2~input_o\ : std_logic;
SIGNAL \DI1~input_o\ : std_logic;
SIGNAL \DI0~input_o\ : std_logic;
SIGNAL \EN2~input_o\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CO <= ww_CO;
ww_EN2 <= EN2;
ww_DI0 <= DI0;
ww_EN1 <= EN1;
ww_DI1 <= DI1;
ww_DI2 <= DI2;
ww_DI3 <= DI3;
DO3 <= ww_DO3;
DO2 <= ww_DO2;
DO1 <= ww_DO1;
DO0 <= ww_DO0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y32_N16
\CO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \CO~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\DO3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => \DO3~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\DO2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~combout\,
	devoe => ww_devoe,
	o => \DO2~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\DO1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~combout\,
	devoe => ww_devoe,
	o => \DO1~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\DO0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~combout\,
	devoe => ww_devoe,
	o => \DO0~output_o\);

-- Location: IOIBUF_X0_Y34_N1
\EN1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN1,
	o => \EN1~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\DI3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI3,
	o => \DI3~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\DI2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI2,
	o => \DI2~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\DI1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI1,
	o => \DI1~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\DI0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DI0,
	o => \DI0~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\EN2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN2,
	o => \EN2~input_o\);

-- Location: LCCOMB_X1_Y34_N24
inst8 : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\EN2~input_o\ & ((\EN1~input_o\ & (!\DI1~input_o\ & !\DI0~input_o\)) # (!\EN1~input_o\ & (\DI1~input_o\ & \DI0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN1~input_o\,
	datab => \DI1~input_o\,
	datac => \DI0~input_o\,
	datad => \EN2~input_o\,
	combout => \inst8~combout\);

-- Location: LCCOMB_X1_Y34_N18
inst4 : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\inst8~combout\ & ((\EN1~input_o\ & (!\DI3~input_o\ & !\DI2~input_o\)) # (!\EN1~input_o\ & (\DI3~input_o\ & \DI2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN1~input_o\,
	datab => \DI3~input_o\,
	datac => \DI2~input_o\,
	datad => \inst8~combout\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X1_Y34_N20
inst5 : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~combout\ = \DI3~input_o\ $ (((\inst8~combout\ & ((\DI2~input_o\))) # (!\inst8~combout\ & (\EN1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN1~input_o\,
	datab => \DI3~input_o\,
	datac => \DI2~input_o\,
	datad => \inst8~combout\,
	combout => \inst5~combout\);

-- Location: LCCOMB_X1_Y34_N30
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = \EN1~input_o\ $ (\DI2~input_o\ $ (\inst8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN1~input_o\,
	datac => \DI2~input_o\,
	datad => \inst8~combout\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X1_Y34_N16
inst9 : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~combout\ = \DI1~input_o\ $ (((\EN2~input_o\ & ((\DI0~input_o\))) # (!\EN2~input_o\ & (\EN1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN1~input_o\,
	datab => \DI1~input_o\,
	datac => \DI0~input_o\,
	datad => \EN2~input_o\,
	combout => \inst9~combout\);

-- Location: LCCOMB_X1_Y34_N26
inst11 : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~combout\ = \EN1~input_o\ $ (\DI0~input_o\ $ (\EN2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN1~input_o\,
	datac => \DI0~input_o\,
	datad => \EN2~input_o\,
	combout => \inst11~combout\);

ww_CO <= \CO~output_o\;

ww_DO3 <= \DO3~output_o\;

ww_DO2 <= \DO2~output_o\;

ww_DO1 <= \DO1~output_o\;

ww_DO0 <= \DO0~output_o\;
END structure;


