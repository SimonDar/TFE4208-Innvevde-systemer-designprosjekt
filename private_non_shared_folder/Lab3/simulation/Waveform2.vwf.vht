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
-- Generated on "02/20/2023 02:49:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          factSTM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY factSTM_vhd_vec_tst IS
END factSTM_vhd_vec_tst;
ARCHITECTURE factSTM_arch OF factSTM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DVIedge : STD_LOGIC;
SIGNAL DVO : STD_LOGIC;
SIGNAL findFinished : STD_LOGIC;
SIGNAL RESET_N : STD_LOGIC;
SIGNAL startFinder : STD_LOGIC;
SIGNAL storeEnvelope : STD_LOGIC;
COMPONENT factSTM
	PORT (
	CLK : IN STD_LOGIC;
	DVIedge : IN STD_LOGIC;
	DVO : OUT STD_LOGIC;
	findFinished : IN STD_LOGIC;
	RESET_N : IN STD_LOGIC;
	startFinder : OUT STD_LOGIC;
	storeEnvelope : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : factSTM
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DVIedge => DVIedge,
	DVO => DVO,
	findFinished => findFinished,
	RESET_N => RESET_N,
	startFinder => startFinder,
	storeEnvelope => storeEnvelope
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
	WAIT FOR 40000 ps;
	CLK <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 49
	LOOP
		CLK <= '0';
		WAIT FOR 50000 ps;
		CLK <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- RESET_N
t_prcs_RESET_N: PROCESS
BEGIN
	RESET_N <= '1';
	WAIT FOR 80000 ps;
	RESET_N <= '0';
	WAIT FOR 80000 ps;
	RESET_N <= '1';
WAIT;
END PROCESS t_prcs_RESET_N;

-- DVIedge
t_prcs_DVIedge: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		DVIedge <= '0';
		WAIT FOR 1000000 ps;
		DVIedge <= '1';
		WAIT FOR 1000000 ps;
	END LOOP;
	DVIedge <= '0';
WAIT;
END PROCESS t_prcs_DVIedge;

-- findFinished
t_prcs_findFinished: PROCESS
BEGIN
LOOP
	findFinished <= '0';
	WAIT FOR 2500000 ps;
	findFinished <= '1';
	WAIT FOR 2500000 ps;
	IF (NOW >= 5000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_findFinished;
END factSTM_arch;
