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
-- Generated on "10/01/2023 22:47:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bit4SSD
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bit4SSD_vhd_vec_tst IS
END bit4SSD_vhd_vec_tst;
ARCHITECTURE bit4SSD_arch OF bit4SSD_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL Ya : STD_LOGIC;
SIGNAL Yb : STD_LOGIC;
SIGNAL Yc : STD_LOGIC;
SIGNAL Yd : STD_LOGIC;
SIGNAL Ye : STD_LOGIC;
SIGNAL Yf : STD_LOGIC;
SIGNAL Yg : STD_LOGIC;
COMPONENT bit4SSD
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	D : IN STD_LOGIC;
	Ya : OUT STD_LOGIC;
	Yb : OUT STD_LOGIC;
	Yc : OUT STD_LOGIC;
	Yd : OUT STD_LOGIC;
	Ye : OUT STD_LOGIC;
	Yf : OUT STD_LOGIC;
	Yg : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : bit4SSD
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	D => D,
	Ya => Ya,
	Yb => Yb,
	Yc => Yc,
	Yd => Yd,
	Ye => Ye,
	Yf => Yf,
	Yg => Yg
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
	WAIT FOR 200000 ps;
	A <= '1';
	WAIT FOR 200000 ps;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B <= '0';
		WAIT FOR 100000 ps;
		B <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		C <= '0';
		WAIT FOR 50000 ps;
		C <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- D
t_prcs_D: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		D <= '0';
		WAIT FOR 25000 ps;
		D <= '1';
		WAIT FOR 25000 ps;
	END LOOP;
	D <= '0';
WAIT;
END PROCESS t_prcs_D;
END bit4SSD_arch;
