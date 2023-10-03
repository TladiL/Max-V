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

-- DATE "10/01/2023 23:33:32"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	vendingMachine IS
    PORT (
	rst : IN std_logic;
	btn : IN std_logic;
	coin : IN std_logic_vector(3 DOWNTO 0);
	LEDX : BUFFER std_logic;
	LEDY : BUFFER std_logic;
	LEDZ : BUFFER std_logic;
	sum_output : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END vendingMachine;

-- Design Ports Information


ARCHITECTURE structure OF vendingMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_btn : std_logic;
SIGNAL ww_coin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDX : std_logic;
SIGNAL ww_LEDY : std_logic;
SIGNAL ww_LEDZ : std_logic;
SIGNAL ww_sum_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \reading_coin_2~regout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \reading_coin_1~regout\ : std_logic;
SIGNAL \LEDY~0_combout\ : std_logic;
SIGNAL \LEDX~reg0_regout\ : std_logic;
SIGNAL \LEDY~reg0_regout\ : std_logic;
SIGNAL \sum[0]~1\ : std_logic;
SIGNAL \sum[0]~1COUT1_9\ : std_logic;
SIGNAL \sum[1]~3\ : std_logic;
SIGNAL \sum[1]~3COUT1_10\ : std_logic;
SIGNAL \sum[2]~5\ : std_logic;
SIGNAL \sum[2]~5COUT1_11\ : std_logic;
SIGNAL \LEDZ~reg0_regout\ : std_logic;
SIGNAL sum : std_logic_vector(3 DOWNTO 0);
SIGNAL \coin~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reading_coin_1~regout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_btn <= btn;
ww_coin <= coin;
LEDX <= ww_LEDX;
LEDY <= ww_LEDY;
LEDZ <= ww_LEDZ;
sum_output <= ww_sum_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reading_coin_1~regout\ <= NOT \reading_coin_1~regout\;

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_btn,
	combout => \btn~combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coin[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coin(0),
	combout => \coin~combout\(0));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coin[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coin(2),
	combout => \coin~combout\(2));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coin[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coin(3),
	combout => \coin~combout\(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X1_Y7_N7
reading_coin_2 : maxv_lcell
-- Equation(s):
-- \reading_coin_2~regout\ = DFFEAS(((\reading_coin_2~regout\) # ((\reading_coin_1~regout\))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \btn~combout\,
	datab => \reading_coin_2~regout\,
	datad => \reading_coin_1~regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reading_coin_2~regout\);

-- Location: LC_X1_Y7_N5
\process_0~0\ : maxv_lcell
-- Equation(s):
-- \process_0~0_combout\ = (((!\reading_coin_1~regout\) # (!\reading_coin_2~regout\)))

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
	datac => \reading_coin_2~regout\,
	datad => \reading_coin_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: LC_X1_Y7_N9
reading_coin_1 : maxv_lcell
-- Equation(s):
-- \reading_coin_1~regout\ = DFFEAS(VCC, GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , \process_0~0_combout\, , , , )

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
	clk => \btn~combout\,
	aclr => \rst~combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reading_coin_1~regout\);

-- Location: LC_X1_Y7_N8
\LEDY~0\ : maxv_lcell
-- Equation(s):
-- \LEDY~0_combout\ = (!\coin~combout\(3) & (\coin~combout\(1) & ((!\reading_coin_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \coin~combout\(3),
	datab => \coin~combout\(1),
	datad => \reading_coin_1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LEDY~0_combout\);

-- Location: LC_X2_Y7_N2
\LEDX~reg0\ : maxv_lcell
-- Equation(s):
-- \LEDX~reg0_regout\ = DFFEAS((\LEDX~reg0_regout\) # ((\coin~combout\(0) & (\coin~combout\(2) & \LEDY~0_combout\))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \btn~combout\,
	dataa => \coin~combout\(0),
	datab => \coin~combout\(2),
	datac => \LEDY~0_combout\,
	datad => \LEDX~reg0_regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDX~reg0_regout\);

-- Location: LC_X1_Y7_N4
\LEDY~reg0\ : maxv_lcell
-- Equation(s):
-- \LEDY~reg0_regout\ = DFFEAS((\LEDY~reg0_regout\) # ((!\coin~combout\(2) & (!\coin~combout\(0) & \LEDY~0_combout\))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \btn~combout\,
	dataa => \coin~combout\(2),
	datab => \coin~combout\(0),
	datac => \LEDY~reg0_regout\,
	datad => \LEDY~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDY~reg0_regout\);

-- Location: LC_X1_Y7_N0
\sum[0]\ : maxv_lcell
-- Equation(s):
-- sum(0) = DFFEAS(\coin~combout\(0) $ ((sum(0))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , \process_0~0_combout\, \coin~combout\(0), , , !\reading_coin_1~regout\)
-- \sum[0]~1\ = CARRY((\coin~combout\(0) & (sum(0))))
-- \sum[0]~1COUT1_9\ = CARRY((\coin~combout\(0) & (sum(0))))

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
	clk => \btn~combout\,
	dataa => \coin~combout\(0),
	datab => sum(0),
	datac => \coin~combout\(0),
	aclr => \rst~combout\,
	sload => \ALT_INV_reading_coin_1~regout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sum(0),
	cout0 => \sum[0]~1\,
	cout1 => \sum[0]~1COUT1_9\);

-- Location: LC_X1_Y7_N1
\sum[1]\ : maxv_lcell
-- Equation(s):
-- sum(1) = DFFEAS(\coin~combout\(1) $ (sum(1) $ ((\sum[0]~1\))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , \process_0~0_combout\, \coin~combout\(1), , , !\reading_coin_1~regout\)
-- \sum[1]~3\ = CARRY((\coin~combout\(1) & (!sum(1) & !\sum[0]~1\)) # (!\coin~combout\(1) & ((!\sum[0]~1\) # (!sum(1)))))
-- \sum[1]~3COUT1_10\ = CARRY((\coin~combout\(1) & (!sum(1) & !\sum[0]~1COUT1_9\)) # (!\coin~combout\(1) & ((!\sum[0]~1COUT1_9\) # (!sum(1)))))

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
	clk => \btn~combout\,
	dataa => \coin~combout\(1),
	datab => sum(1),
	datac => \coin~combout\(1),
	aclr => \rst~combout\,
	sload => \ALT_INV_reading_coin_1~regout\,
	ena => \process_0~0_combout\,
	cin0 => \sum[0]~1\,
	cin1 => \sum[0]~1COUT1_9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sum(1),
	cout0 => \sum[1]~3\,
	cout1 => \sum[1]~3COUT1_10\);

-- Location: LC_X1_Y7_N2
\sum[2]\ : maxv_lcell
-- Equation(s):
-- sum(2) = DFFEAS(\coin~combout\(2) $ (sum(2) $ ((!\sum[1]~3\))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , \process_0~0_combout\, \coin~combout\(2), , , !\reading_coin_1~regout\)
-- \sum[2]~5\ = CARRY((\coin~combout\(2) & ((sum(2)) # (!\sum[1]~3\))) # (!\coin~combout\(2) & (sum(2) & !\sum[1]~3\)))
-- \sum[2]~5COUT1_11\ = CARRY((\coin~combout\(2) & ((sum(2)) # (!\sum[1]~3COUT1_10\))) # (!\coin~combout\(2) & (sum(2) & !\sum[1]~3COUT1_10\)))

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
	clk => \btn~combout\,
	dataa => \coin~combout\(2),
	datab => sum(2),
	datac => \coin~combout\(2),
	aclr => \rst~combout\,
	sload => \ALT_INV_reading_coin_1~regout\,
	ena => \process_0~0_combout\,
	cin0 => \sum[1]~3\,
	cin1 => \sum[1]~3COUT1_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sum(2),
	cout0 => \sum[2]~5\,
	cout1 => \sum[2]~5COUT1_11\);

-- Location: LC_X1_Y7_N3
\sum[3]\ : maxv_lcell
-- Equation(s):
-- sum(3) = DFFEAS(\coin~combout\(3) $ (((\sum[2]~5\ $ (sum(3))))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , \process_0~0_combout\, \coin~combout\(3), , , !\reading_coin_1~regout\)

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
	clk => \btn~combout\,
	dataa => \coin~combout\(3),
	datac => \coin~combout\(3),
	datad => sum(3),
	aclr => \rst~combout\,
	sload => \ALT_INV_reading_coin_1~regout\,
	ena => \process_0~0_combout\,
	cin0 => \sum[2]~5\,
	cin1 => \sum[2]~5COUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sum(3));

-- Location: LC_X1_Y7_N6
\LEDZ~reg0\ : maxv_lcell
-- Equation(s):
-- \LEDZ~reg0_regout\ = DFFEAS(((sum(3) & ((sum(2)) # (sum(1))))), GLOBAL(\btn~combout\), !GLOBAL(\rst~combout\), , \process_0~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \btn~combout\,
	datab => sum(2),
	datac => sum(1),
	datad => sum(3),
	aclr => \rst~combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDZ~reg0_regout\);

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LEDX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LEDX~reg0_regout\,
	oe => VCC,
	padio => ww_LEDX);

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LEDY~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LEDY~reg0_regout\,
	oe => VCC,
	padio => ww_LEDY);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LEDZ~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LEDZ~reg0_regout\,
	oe => VCC,
	padio => ww_LEDZ);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum_output[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sum(0),
	oe => VCC,
	padio => ww_sum_output(0));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum_output[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sum(1),
	oe => VCC,
	padio => ww_sum_output(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum_output[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sum(2),
	oe => VCC,
	padio => ww_sum_output(2));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sum_output[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sum(3),
	oe => VCC,
	padio => ww_sum_output(3));
END structure;


