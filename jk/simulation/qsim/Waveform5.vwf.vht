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
-- Generated on "10/01/2023 23:29:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          task2B
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY task2B_vhd_vec_tst IS
END task2B_vhd_vec_tst;
ARCHITECTURE task2B_arch OF task2B_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL coin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
SIGNAL Restart : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Ya : STD_LOGIC;
SIGNAL Yb : STD_LOGIC;
SIGNAL Yc : STD_LOGIC;
SIGNAL Yd : STD_LOGIC;
SIGNAL Ye : STD_LOGIC;
SIGNAL Yf : STD_LOGIC;
SIGNAL Yg : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT task2B
	PORT (
	coin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset : IN STD_LOGIC;
	Restart : IN STD_LOGIC;
	X : OUT STD_LOGIC;
	Y : OUT STD_LOGIC;
	Ya : OUT STD_LOGIC;
	Yb : OUT STD_LOGIC;
	Yc : OUT STD_LOGIC;
	Yd : OUT STD_LOGIC;
	Ye : OUT STD_LOGIC;
	Yf : OUT STD_LOGIC;
	Yg : OUT STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : task2B
	PORT MAP (
-- list connections between master ports and signals
	coin => coin,
	Reset => Reset,
	Restart => Restart,
	X => X,
	Y => Y,
	Ya => Ya,
	Yb => Yb,
	Yc => Yc,
	Yd => Yd,
	Ye => Ye,
	Yf => Yf,
	Yg => Yg,
	Z => Z
	);
-- coin[3]
t_prcs_coin_3: PROCESS
BEGIN
	coin(3) <= '0';
WAIT;
END PROCESS t_prcs_coin_3;
-- coin[2]
t_prcs_coin_2: PROCESS
BEGIN
	coin(2) <= '1';
	WAIT FOR 340000 ps;
	coin(2) <= '0';
WAIT;
END PROCESS t_prcs_coin_2;
-- coin[1]
t_prcs_coin_1: PROCESS
BEGIN
	coin(1) <= '1';
WAIT;
END PROCESS t_prcs_coin_1;
-- coin[0]
t_prcs_coin_0: PROCESS
BEGIN
	coin(0) <= '1';
	WAIT FOR 340000 ps;
	coin(0) <= '0';
WAIT;
END PROCESS t_prcs_coin_0;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '1';
	WAIT FOR 800000 ps;
	Reset <= '0';
	WAIT FOR 110000 ps;
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;

-- Restart
t_prcs_Restart: PROCESS
BEGIN
	Restart <= '1';
	WAIT FOR 180000 ps;
	Restart <= '0';
	WAIT FOR 90000 ps;
	Restart <= '1';
	WAIT FOR 230000 ps;
	Restart <= '0';
	WAIT FOR 110000 ps;
	Restart <= '1';
WAIT;
END PROCESS t_prcs_Restart;
END task2B_arch;
