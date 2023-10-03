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
-- Generated on "10/01/2023 23:38:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          vendingMachine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY vendingMachine_vhd_vec_tst IS
END vendingMachine_vhd_vec_tst;
ARCHITECTURE vendingMachine_arch OF vendingMachine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL btn : STD_LOGIC;
SIGNAL coin : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDX : STD_LOGIC;
SIGNAL LEDY : STD_LOGIC;
SIGNAL LEDZ : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL sum_output : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT vendingMachine
	PORT (
	btn : IN STD_LOGIC;
	coin : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDX : BUFFER STD_LOGIC;
	LEDY : BUFFER STD_LOGIC;
	LEDZ : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC;
	sum_output : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : vendingMachine
	PORT MAP (
-- list connections between master ports and signals
	btn => btn,
	coin => coin,
	LEDX => LEDX,
	LEDY => LEDY,
	LEDZ => LEDZ,
	rst => rst,
	sum_output => sum_output
	);

-- btn
t_prcs_btn: PROCESS
BEGIN
	btn <= '0';
	WAIT FOR 160000 ps;
	btn <= '1';
	WAIT FOR 80000 ps;
	btn <= '0';
	WAIT FOR 320000 ps;
	btn <= '1';
	WAIT FOR 70000 ps;
	btn <= '0';
WAIT;
END PROCESS t_prcs_btn;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 850000 ps;
	rst <= '1';
	WAIT FOR 50000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
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
	WAIT FOR 410000 ps;
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
	WAIT FOR 410000 ps;
	coin(0) <= '0';
WAIT;
END PROCESS t_prcs_coin_0;
END vendingMachine_arch;
