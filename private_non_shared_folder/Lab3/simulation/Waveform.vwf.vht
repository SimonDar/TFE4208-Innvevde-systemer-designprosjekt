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
-- Generated on "02/19/2023 22:03:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplekser
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplekser_vhd_vec_tst IS
END multiplekser_vhd_vec_tst;
ARCHITECTURE multiplekser_arch OF multiplekser_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
COMPONENT multiplekser
	PORT (
	data0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplekser
	PORT MAP (
-- list connections between master ports and signals
	data0 => data0,
	data1 => data1,
	dataOut => dataOut,
	sel => sel
	);
-- data0[7]
t_prcs_data0_7: PROCESS
BEGIN
	data0(7) <= '0';
WAIT;
END PROCESS t_prcs_data0_7;
-- data0[6]
t_prcs_data0_6: PROCESS
BEGIN
	data0(6) <= '1';
WAIT;
END PROCESS t_prcs_data0_6;
-- data0[5]
t_prcs_data0_5: PROCESS
BEGIN
	data0(5) <= '0';
WAIT;
END PROCESS t_prcs_data0_5;
-- data0[4]
t_prcs_data0_4: PROCESS
BEGIN
	data0(4) <= '1';
WAIT;
END PROCESS t_prcs_data0_4;
-- data0[3]
t_prcs_data0_3: PROCESS
BEGIN
	data0(3) <= '0';
WAIT;
END PROCESS t_prcs_data0_3;
-- data0[2]
t_prcs_data0_2: PROCESS
BEGIN
	data0(2) <= '1';
WAIT;
END PROCESS t_prcs_data0_2;
-- data0[1]
t_prcs_data0_1: PROCESS
BEGIN
	data0(1) <= '0';
WAIT;
END PROCESS t_prcs_data0_1;
-- data0[0]
t_prcs_data0_0: PROCESS
BEGIN
	data0(0) <= '1';
WAIT;
END PROCESS t_prcs_data0_0;
-- data1[7]
t_prcs_data1_7: PROCESS
BEGIN
	data1(7) <= '1';
WAIT;
END PROCESS t_prcs_data1_7;
-- data1[6]
t_prcs_data1_6: PROCESS
BEGIN
	data1(6) <= '0';
WAIT;
END PROCESS t_prcs_data1_6;
-- data1[5]
t_prcs_data1_5: PROCESS
BEGIN
	data1(5) <= '1';
WAIT;
END PROCESS t_prcs_data1_5;
-- data1[4]
t_prcs_data1_4: PROCESS
BEGIN
	data1(4) <= '0';
WAIT;
END PROCESS t_prcs_data1_4;
-- data1[3]
t_prcs_data1_3: PROCESS
BEGIN
	data1(3) <= '1';
WAIT;
END PROCESS t_prcs_data1_3;
-- data1[2]
t_prcs_data1_2: PROCESS
BEGIN
	data1(2) <= '0';
WAIT;
END PROCESS t_prcs_data1_2;
-- data1[1]
t_prcs_data1_1: PROCESS
BEGIN
	data1(1) <= '1';
WAIT;
END PROCESS t_prcs_data1_1;
-- data1[0]
t_prcs_data1_0: PROCESS
BEGIN
	data1(0) <= '0';
WAIT;
END PROCESS t_prcs_data1_0;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
END multiplekser_arch;
