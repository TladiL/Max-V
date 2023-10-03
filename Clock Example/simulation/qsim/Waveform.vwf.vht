-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "09/30/2023 23:09:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          jkffDe
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY jkffDe_vhd_vec_tst IS
END jkffDe_vhd_vec_tst;
ARCHITECTURE jkffDe_arch OF jkffDe_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cpu : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL k_cpu : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT jkffDe
	PORT (
	cpu : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	k_cpu : IN STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : jkffDe
	PORT MAP (
-- list connections between master ports and signals
	cpu => cpu,
	J => J,
	K => K,
	k_cpu => k_cpu,
	Q => Q
	);

-- k_cpu
t_prcs_k_cpu: PROCESS
BEGIN
LOOP
	k_cpu <= '0';
	WAIT FOR 25000 ps;
	k_cpu <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_k_cpu;

-- J
t_prcs_J: PROCESS
BEGIN
	J <= '1';
	WAIT FOR 50000 ps;
	J <= '0';
	WAIT FOR 120000 ps;
	J <= '1';
	WAIT FOR 100000 ps;
	J <= '0';
	WAIT FOR 330000 ps;
	J <= '1';
	WAIT FOR 180000 ps;
	J <= '0';
WAIT;
END PROCESS t_prcs_J;

-- K
t_prcs_K: PROCESS
BEGIN
	K <= '0';
	WAIT FOR 20000 ps;
	K <= '1';
	WAIT FOR 70000 ps;
	K <= '0';
	WAIT FOR 80000 ps;
	K <= '1';
	WAIT FOR 190000 ps;
	K <= '0';
	WAIT FOR 120000 ps;
	K <= '1';
	WAIT FOR 160000 ps;
	K <= '0';
WAIT;
END PROCESS t_prcs_K;
END jkffDe_arch;
