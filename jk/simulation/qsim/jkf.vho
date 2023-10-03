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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/01/2023 23:29:47"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	task2B IS
    PORT (
	X : OUT std_logic;
	Reset : IN std_logic;
	Restart : IN std_logic;
	coin : IN std_logic_vector(3 DOWNTO 0);
	Y : OUT std_logic;
	Z : OUT std_logic;
	Ya : OUT std_logic;
	Yb : OUT std_logic;
	Yc : OUT std_logic;
	Yd : OUT std_logic;
	Ye : OUT std_logic;
	Yf : OUT std_logic;
	Yg : OUT std_logic
	);
END task2B;

-- Design Ports Information


ARCHITECTURE structure OF task2B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Restart : std_logic;
SIGNAL ww_coin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_Ya : std_logic;
SIGNAL ww_Yb : std_logic;
SIGNAL ww_Yc : std_logic;
SIGNAL ww_Yd : std_logic;
SIGNAL ww_Ye : std_logic;
SIGNAL ww_Yf : std_logic;
SIGNAL ww_Yg : std_logic;
SIGNAL \Restart~combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \inst1|reading_coin_1~regout\ : std_logic;
SIGNAL \inst1|LEDY~0_combout\ : std_logic;
SIGNAL \inst1|LEDX~regout\ : std_logic;
SIGNAL \inst1|LEDY~regout\ : std_logic;
SIGNAL \inst1|reading_coin_2~regout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|sum[0]~7\ : std_logic;
SIGNAL \inst1|sum[0]~7COUT1_9\ : std_logic;
SIGNAL \inst1|sum[1]~5\ : std_logic;
SIGNAL \inst1|sum[1]~5COUT1_10\ : std_logic;
SIGNAL \inst1|sum[2]~3\ : std_logic;
SIGNAL \inst1|sum[2]~3COUT1_11\ : std_logic;
SIGNAL \inst1|LEDZ~regout\ : std_logic;
SIGNAL \inst|insFt5~0_combout\ : std_logic;
SIGNAL \inst|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst5D~0_combout\ : std_logic;
SIGNAL \inst|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst6SA~0_combout\ : std_logic;
SIGNAL \inst|inst6SA22~0_combout\ : std_logic;
SIGNAL \inst1|sum\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \coin~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Restart~combout\ : std_logic;
SIGNAL \ALT_INV_Reset~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_reading_coin_1~regout\ : std_logic;
SIGNAL \inst|ALT_INV_insFt5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_sum\ : std_logic_vector(3 DOWNTO 3);

BEGIN

X <= ww_X;
ww_Reset <= Reset;
ww_Restart <= Restart;
ww_coin <= coin;
Y <= ww_Y;
Z <= ww_Z;
Ya <= ww_Ya;
Yb <= ww_Yb;
Yc <= ww_Yc;
Yd <= ww_Yd;
Ye <= ww_Ye;
Yf <= ww_Yf;
Yg <= ww_Yg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Restart~combout\ <= NOT \Restart~combout\;
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;
\inst1|ALT_INV_reading_coin_1~regout\ <= NOT \inst1|reading_coin_1~regout\;
\inst|ALT_INV_insFt5~0_combout\ <= NOT \inst|insFt5~0_combout\;
\inst1|ALT_INV_sum\(3) <= NOT \inst1|sum\(3);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Restart~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Restart,
	combout => \Restart~combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coin[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coin(2),
	combout => \coin~combout\(2));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coin[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coin(0),
	combout => \coin~combout\(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coin[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coin(3),
	combout => \coin~combout\(3));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coin[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coin(1),
	combout => \coin~combout\(1));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LC_X2_Y6_N9
\inst1|reading_coin_1\ : maxv_lcell
-- Equation(s):
-- \inst1|reading_coin_1~regout\ = DFFEAS(VCC, !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|reading_coin_1~regout\);

-- Location: LC_X2_Y6_N1
\inst1|LEDY~0\ : maxv_lcell
-- Equation(s):
-- \inst1|LEDY~0_combout\ = (!\coin~combout\(3) & (((\coin~combout\(1) & !\inst1|reading_coin_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coin~combout\(3),
	datac => \coin~combout\(1),
	datad => \inst1|reading_coin_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|LEDY~0_combout\);

-- Location: LC_X2_Y6_N0
\inst1|LEDX\ : maxv_lcell
-- Equation(s):
-- \inst1|LEDX~regout\ = DFFEAS((\inst1|LEDX~regout\) # ((\coin~combout\(2) & (\coin~combout\(0) & \inst1|LEDY~0_combout\))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	dataa => \coin~combout\(2),
	datab => \coin~combout\(0),
	datac => \inst1|LEDX~regout\,
	datad => \inst1|LEDY~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LEDX~regout\);

-- Location: LC_X2_Y6_N2
\inst1|LEDY\ : maxv_lcell
-- Equation(s):
-- \inst1|LEDY~regout\ = DFFEAS((\inst1|LEDY~regout\) # ((!\coin~combout\(2) & (!\coin~combout\(0) & \inst1|LEDY~0_combout\))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	dataa => \coin~combout\(2),
	datab => \inst1|LEDY~regout\,
	datac => \coin~combout\(0),
	datad => \inst1|LEDY~0_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LEDY~regout\);

-- Location: LC_X2_Y6_N4
\inst1|reading_coin_2\ : maxv_lcell
-- Equation(s):
-- \inst1|reading_coin_2~regout\ = DFFEAS((((\inst1|reading_coin_2~regout\) # (\inst1|reading_coin_1~regout\))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	datac => \inst1|reading_coin_2~regout\,
	datad => \inst1|reading_coin_1~regout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|reading_coin_2~regout\);

-- Location: LC_X2_Y6_N3
\inst1|process_0~0\ : maxv_lcell
-- Equation(s):
-- \inst1|process_0~0_combout\ = (((!\inst1|reading_coin_1~regout\) # (!\inst1|reading_coin_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|reading_coin_2~regout\,
	datad => \inst1|reading_coin_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|process_0~0_combout\);

-- Location: LC_X2_Y6_N5
\inst1|sum[0]\ : maxv_lcell
-- Equation(s):
-- \inst1|sum\(0) = DFFEAS(\inst1|sum\(0) $ ((\coin~combout\(0))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , \inst1|process_0~0_combout\, \coin~combout\(0), , , !\inst1|reading_coin_1~regout\)
-- \inst1|sum[0]~7\ = CARRY((\inst1|sum\(0) & (\coin~combout\(0))))
-- \inst1|sum[0]~7COUT1_9\ = CARRY((\inst1|sum\(0) & (\coin~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	dataa => \inst1|sum\(0),
	datab => \coin~combout\(0),
	datac => \coin~combout\(0),
	aclr => \ALT_INV_Reset~combout\,
	sload => \inst1|ALT_INV_reading_coin_1~regout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sum\(0),
	cout0 => \inst1|sum[0]~7\,
	cout1 => \inst1|sum[0]~7COUT1_9\);

-- Location: LC_X2_Y6_N6
\inst1|sum[1]\ : maxv_lcell
-- Equation(s):
-- \inst1|sum\(1) = DFFEAS(\inst1|sum\(1) $ (\coin~combout\(1) $ ((\inst1|sum[0]~7\))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , \inst1|process_0~0_combout\, \coin~combout\(1), , , !\inst1|reading_coin_1~regout\)
-- \inst1|sum[1]~5\ = CARRY((\inst1|sum\(1) & (!\coin~combout\(1) & !\inst1|sum[0]~7\)) # (!\inst1|sum\(1) & ((!\inst1|sum[0]~7\) # (!\coin~combout\(1)))))
-- \inst1|sum[1]~5COUT1_10\ = CARRY((\inst1|sum\(1) & (!\coin~combout\(1) & !\inst1|sum[0]~7COUT1_9\)) # (!\inst1|sum\(1) & ((!\inst1|sum[0]~7COUT1_9\) # (!\coin~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	dataa => \inst1|sum\(1),
	datab => \coin~combout\(1),
	datac => \coin~combout\(1),
	aclr => \ALT_INV_Reset~combout\,
	sload => \inst1|ALT_INV_reading_coin_1~regout\,
	ena => \inst1|process_0~0_combout\,
	cin0 => \inst1|sum[0]~7\,
	cin1 => \inst1|sum[0]~7COUT1_9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sum\(1),
	cout0 => \inst1|sum[1]~5\,
	cout1 => \inst1|sum[1]~5COUT1_10\);

-- Location: LC_X2_Y6_N7
\inst1|sum[2]\ : maxv_lcell
-- Equation(s):
-- \inst1|sum\(2) = DFFEAS(\coin~combout\(2) $ (\inst1|sum\(2) $ ((!\inst1|sum[1]~5\))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , \inst1|process_0~0_combout\, \coin~combout\(2), , , !\inst1|reading_coin_1~regout\)
-- \inst1|sum[2]~3\ = CARRY((\coin~combout\(2) & ((\inst1|sum\(2)) # (!\inst1|sum[1]~5\))) # (!\coin~combout\(2) & (\inst1|sum\(2) & !\inst1|sum[1]~5\)))
-- \inst1|sum[2]~3COUT1_11\ = CARRY((\coin~combout\(2) & ((\inst1|sum\(2)) # (!\inst1|sum[1]~5COUT1_10\))) # (!\coin~combout\(2) & (\inst1|sum\(2) & !\inst1|sum[1]~5COUT1_10\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	dataa => \coin~combout\(2),
	datab => \inst1|sum\(2),
	datac => \coin~combout\(2),
	aclr => \ALT_INV_Reset~combout\,
	sload => \inst1|ALT_INV_reading_coin_1~regout\,
	ena => \inst1|process_0~0_combout\,
	cin0 => \inst1|sum[1]~5\,
	cin1 => \inst1|sum[1]~5COUT1_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sum\(2),
	cout0 => \inst1|sum[2]~3\,
	cout1 => \inst1|sum[2]~3COUT1_11\);

-- Location: LC_X2_Y6_N8
\inst1|sum[3]\ : maxv_lcell
-- Equation(s):
-- \inst1|sum\(3) = DFFEAS(\coin~combout\(3) $ (((\inst1|sum[2]~3\ $ (\inst1|sum\(3))))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , \inst1|process_0~0_combout\, \coin~combout\(3), , , !\inst1|reading_coin_1~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	dataa => \coin~combout\(3),
	datac => \coin~combout\(3),
	datad => \inst1|sum\(3),
	aclr => \ALT_INV_Reset~combout\,
	sload => \inst1|ALT_INV_reading_coin_1~regout\,
	ena => \inst1|process_0~0_combout\,
	cin0 => \inst1|sum[2]~3\,
	cin1 => \inst1|sum[2]~3COUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sum\(3));

-- Location: LC_X1_Y6_N2
\inst1|LEDZ\ : maxv_lcell
-- Equation(s):
-- \inst1|LEDZ~regout\ = DFFEAS((((\inst1|sum\(1)) # (\inst1|sum\(2)))), !GLOBAL(\Restart~combout\), GLOBAL(\Reset~combout\), , \inst1|process_0~0_combout\, , , !\inst1|sum\(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Restart~combout\,
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(2),
	aclr => \ALT_INV_Reset~combout\,
	sclr => \inst1|ALT_INV_sum\(3),
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LEDZ~regout\);

-- Location: LC_X1_Y6_N4
\inst|insFt5~0\ : maxv_lcell
-- Equation(s):
-- \inst|insFt5~0_combout\ = (\inst1|sum\(1) & (((\inst1|sum\(3))))) # (!\inst1|sum\(1) & (\inst1|sum\(2) $ (((\inst1|sum\(0) & !\inst1|sum\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sum\(2),
	datab => \inst1|sum\(0),
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|insFt5~0_combout\);

-- Location: LC_X1_Y6_N7
\inst|inst5~0\ : maxv_lcell
-- Equation(s):
-- \inst|inst5~0_combout\ = (\inst1|sum\(2) & (!\inst1|sum\(3) & (\inst1|sum\(0) $ (!\inst1|sum\(1))))) # (!\inst1|sum\(2) & (((!\inst1|sum\(3)) # (!\inst1|sum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05d7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sum\(2),
	datab => \inst1|sum\(0),
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst5~0_combout\);

-- Location: LC_X1_Y6_N8
\inst|inst15~0\ : maxv_lcell
-- Equation(s):
-- \inst|inst15~0_combout\ = (\inst1|sum\(2) & (((!\inst1|sum\(3))))) # (!\inst1|sum\(2) & (((\inst1|sum\(0) & !\inst1|sum\(3))) # (!\inst1|sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05ef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sum\(2),
	datab => \inst1|sum\(0),
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst15~0_combout\);

-- Location: LC_X1_Y6_N3
\inst|inst5D~0\ : maxv_lcell
-- Equation(s):
-- \inst|inst5D~0_combout\ = (\inst1|sum\(2) & (!\inst1|sum\(3) & (\inst1|sum\(0) $ (\inst1|sum\(1))))) # (!\inst1|sum\(2) & ((\inst1|sum\(1) & ((!\inst1|sum\(3)))) # (!\inst1|sum\(1) & (!\inst1|sum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0179",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sum\(2),
	datab => \inst1|sum\(0),
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst5D~0_combout\);

-- Location: LC_X1_Y6_N6
\inst|inst17~0\ : maxv_lcell
-- Equation(s):
-- \inst|inst17~0_combout\ = (!\inst1|sum\(0) & ((\inst1|sum\(1) & ((!\inst1|sum\(3)))) # (!\inst1|sum\(1) & (!\inst1|sum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0131",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sum\(2),
	datab => \inst1|sum\(0),
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst17~0_combout\);

-- Location: LC_X1_Y6_N5
\inst|inst6SA~0\ : maxv_lcell
-- Equation(s):
-- \inst|inst6SA~0_combout\ = (\inst1|sum\(2) & (!\inst1|sum\(3) & ((!\inst1|sum\(1)) # (!\inst1|sum\(0))))) # (!\inst1|sum\(2) & (!\inst1|sum\(1) & ((\inst1|sum\(3)) # (!\inst1|sum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "052b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sum\(2),
	datab => \inst1|sum\(0),
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst6SA~0_combout\);

-- Location: LC_X1_Y6_N9
\inst|inst6SA22~0\ : maxv_lcell
-- Equation(s):
-- \inst|inst6SA22~0_combout\ = (\inst1|sum\(3)) # ((\inst1|sum\(2) & ((!\inst1|sum\(1)) # (!\inst1|sum\(0)))) # (!\inst1|sum\(2) & ((\inst1|sum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sum\(2),
	datab => \inst1|sum\(0),
	datac => \inst1|sum\(1),
	datad => \inst1|sum\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|inst6SA22~0_combout\);

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\X~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LEDX~regout\,
	oe => VCC,
	padio => ww_X);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LEDY~regout\,
	oe => VCC,
	padio => ww_Y);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LEDZ~regout\,
	oe => VCC,
	padio => ww_Z);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Ya~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|ALT_INV_insFt5~0_combout\,
	oe => VCC,
	padio => ww_Ya);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yb~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst5~0_combout\,
	oe => VCC,
	padio => ww_Yb);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst15~0_combout\,
	oe => VCC,
	padio => ww_Yc);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yd~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst5D~0_combout\,
	oe => VCC,
	padio => ww_Yd);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Ye~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst17~0_combout\,
	oe => VCC,
	padio => ww_Ye);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yf~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst6SA~0_combout\,
	oe => VCC,
	padio => ww_Yf);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yg~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|inst6SA22~0_combout\,
	oe => VCC,
	padio => ww_Yg);
END structure;


