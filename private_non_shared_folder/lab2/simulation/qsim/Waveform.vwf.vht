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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/16/2023 19:03:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Krets_12
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Krets_12_vhd_vec_tst IS
END Krets_12_vhd_vec_tst;
ARCHITECTURE Krets_12_arch OF Krets_12_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CO : STD_LOGIC;
SIGNAL DI0 : STD_LOGIC;
SIGNAL DI1 : STD_LOGIC;
SIGNAL DI2 : STD_LOGIC;
SIGNAL DI3 : STD_LOGIC;
SIGNAL DO0 : STD_LOGIC;
SIGNAL DO1 : STD_LOGIC;
SIGNAL DO2 : STD_LOGIC;
SIGNAL DO3 : STD_LOGIC;
SIGNAL EN1 : STD_LOGIC;
SIGNAL EN2 : STD_LOGIC;
COMPONENT Krets_12
	PORT (
	CO : OUT STD_LOGIC;
	DI0 : IN STD_LOGIC;
	DI1 : IN STD_LOGIC;
	DI2 : IN STD_LOGIC;
	DI3 : IN STD_LOGIC;
	DO0 : OUT STD_LOGIC;
	DO1 : OUT STD_LOGIC;
	DO2 : OUT STD_LOGIC;
	DO3 : OUT STD_LOGIC;
	EN1 : IN STD_LOGIC;
	EN2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Krets_12
	PORT MAP (
-- list connections between master ports and signals
	CO => CO,
	DI0 => DI0,
	DI1 => DI1,
	DI2 => DI2,
	DI3 => DI3,
	DO0 => DO0,
	DO1 => DO1,
	DO2 => DO2,
	DO3 => DO3,
	EN1 => EN1,
	EN2 => EN2
	);

-- DI0
t_prcs_DI0: PROCESS
BEGIN
	DI0 <= '0';
WAIT;
END PROCESS t_prcs_DI0;

-- DI1
t_prcs_DI1: PROCESS
BEGIN
	DI1 <= '1';
WAIT;
END PROCESS t_prcs_DI1;

-- DI2
t_prcs_DI2: PROCESS
BEGIN
	DI2 <= '0';
WAIT;
END PROCESS t_prcs_DI2;

-- DI3
t_prcs_DI3: PROCESS
BEGIN
	DI3 <= '1';
WAIT;
END PROCESS t_prcs_DI3;

-- EN1
t_prcs_EN1: PROCESS
BEGIN
	EN1 <= '1';
WAIT;
END PROCESS t_prcs_EN1;

-- EN2
t_prcs_EN2: PROCESS
BEGIN
	EN2 <= '1';
WAIT;
END PROCESS t_prcs_EN2;
END Krets_12_arch;
