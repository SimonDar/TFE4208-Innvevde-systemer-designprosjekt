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
-- Generated on "02/20/2023 00:23:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          edgeDetector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY edgeDetector_vhd_vec_tst IS
END edgeDetector_vhd_vec_tst;
ARCHITECTURE edgeDetector_arch OF edgeDetector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DVI : STD_LOGIC;
SIGNAL DVIedge : STD_LOGIC;
SIGNAL RESET_N : STD_LOGIC;
COMPONENT edgeDetector
	PORT (
	CLK : IN STD_LOGIC;
	DVI : IN STD_LOGIC;
	DVIedge : OUT STD_LOGIC;
	RESET_N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : edgeDetector
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DVI => DVI,
	DVIedge => DVIedge,
	RESET_N => RESET_N
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
	WAIT FOR 40000 ps;
	CLK <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 99
	LOOP
		CLK <= '0';
		WAIT FOR 50000 ps;
		CLK <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- DVI
t_prcs_DVI: PROCESS
BEGIN
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 650000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 250000 ps;
	DVI <= '0';
	WAIT FOR 100000 ps;
	DVI <= '1';
	WAIT FOR 100000 ps;
	DVI <= '0';
	WAIT FOR 450000 ps;
	DVI <= '1';
	WAIT FOR 650000 ps;
	DVI <= '0';
WAIT;
END PROCESS t_prcs_DVI;

-- RESET_N
t_prcs_RESET_N: PROCESS
BEGIN
	RESET_N <= '0';
	WAIT FOR 50000 ps;
	RESET_N <= '1';
WAIT;
END PROCESS t_prcs_RESET_N;
END edgeDetector_arch;
