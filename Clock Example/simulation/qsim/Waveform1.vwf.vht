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
-- Generated on "10/01/2023 00:00:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ex165
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex165_vhd_vec_tst IS
END ex165_vhd_vec_tst;
ARCHITECTURE ex165_arch OF ex165_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL H : STD_LOGIC;
SIGNAL SL : STD_LOGIC;
SIGNAL X : STD_LOGIC;
COMPONENT ex165
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	C : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	D : IN STD_LOGIC;
	E : IN STD_LOGIC;
	F : IN STD_LOGIC;
	G : IN STD_LOGIC;
	H : IN STD_LOGIC;
	SL : IN STD_LOGIC;
	X : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ex165
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	Clk => Clk,
	D => D,
	E => E,
	F => F,
	G => G,
	H => H,
	SL => SL,
	X => X
	);

-- A
t_prcs_A: PROCESS
BEGIN
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	B <= '1';
WAIT;
END PROCESS t_prcs_B;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '1';
WAIT;
END PROCESS t_prcs_C;

-- D
t_prcs_D: PROCESS
BEGIN
	D <= '1';
WAIT;
END PROCESS t_prcs_D;

-- E
t_prcs_E: PROCESS
BEGIN
	E <= '0';
WAIT;
END PROCESS t_prcs_E;

-- F
t_prcs_F: PROCESS
BEGIN
	F <= '0';
WAIT;
END PROCESS t_prcs_F;

-- G
t_prcs_G: PROCESS
BEGIN
	G <= '1';
WAIT;
END PROCESS t_prcs_G;

-- H
t_prcs_H: PROCESS
BEGIN
	H <= '0';
WAIT;
END PROCESS t_prcs_H;

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 50000 ps;
	Clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- SL
t_prcs_SL: PROCESS
BEGIN
	SL <= '1';
	WAIT FOR 110000 ps;
	SL <= '0';
	WAIT FOR 190000 ps;
	SL <= '1';
WAIT;
END PROCESS t_prcs_SL;
END ex165_arch;
