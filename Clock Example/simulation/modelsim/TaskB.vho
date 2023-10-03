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

-- DATE "10/01/2023 01:39:58"

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

ENTITY 	bcd2ssd IS
    PORT (
	Ya : OUT std_logic;
	A : IN std_logic;
	C : IN std_logic;
	B : IN std_logic;
	D : IN std_logic;
	Yb : OUT std_logic;
	Yc : OUT std_logic;
	Yd : OUT std_logic;
	Ye : OUT std_logic;
	Yf : OUT std_logic;
	Yg : OUT std_logic
	);
END bcd2ssd;

-- Design Ports Information


ARCHITECTURE structure OF bcd2ssd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ya : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Yb : std_logic;
SIGNAL ww_Yc : std_logic;
SIGNAL ww_Yd : std_logic;
SIGNAL ww_Ye : std_logic;
SIGNAL ww_Yf : std_logic;
SIGNAL ww_Yg : std_logic;
SIGNAL \D~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \insFt5~0_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst5D~0_combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst6SA~0_combout\ : std_logic;
SIGNAL \inst6SA22~0_combout\ : std_logic;
SIGNAL \ALT_INV_insFt5~0_combout\ : std_logic;

BEGIN

Ya <= ww_Ya;
ww_A <= A;
ww_C <= C;
ww_B <= B;
ww_D <= D;
Yb <= ww_Yb;
Yc <= ww_Yc;
Yd <= ww_Yd;
Ye <= ww_Ye;
Yf <= ww_Yf;
Yg <= ww_Yg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_insFt5~0_combout\ <= NOT \insFt5~0_combout\;

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D,
	combout => \D~combout\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B,
	combout => \B~combout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: LC_X1_Y5_N3
\insFt5~0\ : maxv_lcell
-- Equation(s):
-- \insFt5~0_combout\ = (\C~combout\ & (((\A~combout\)))) # (!\C~combout\ & (\B~combout\ $ (((\D~combout\ & !\A~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc06",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \insFt5~0_combout\);

-- Location: LC_X1_Y5_N8
\inst5~0\ : maxv_lcell
-- Equation(s):
-- \inst5~0_combout\ = (\B~combout\ & (!\A~combout\ & (\D~combout\ $ (!\C~combout\)))) # (!\B~combout\ & (((!\A~combout\) # (!\C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03b7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5~0_combout\);

-- Location: LC_X1_Y5_N7
\inst15~0\ : maxv_lcell
-- Equation(s):
-- \inst15~0_combout\ = (\B~combout\ & (((!\A~combout\)))) # (!\B~combout\ & (((\D~combout\ & !\A~combout\)) # (!\C~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst15~0_combout\);

-- Location: LC_X1_Y5_N2
\inst5D~0\ : maxv_lcell
-- Equation(s):
-- \inst5D~0_combout\ = (\D~combout\ & (!\A~combout\ & (\B~combout\ $ (\C~combout\)))) # (!\D~combout\ & ((\C~combout\ & ((!\A~combout\))) # (!\C~combout\ & (!\B~combout\))))

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
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5D~0_combout\);

-- Location: LC_X1_Y5_N9
\inst17~0\ : maxv_lcell
-- Equation(s):
-- \inst17~0_combout\ = (!\D~combout\ & ((\C~combout\ & ((!\A~combout\))) # (!\C~combout\ & (!\B~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0151",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17~0_combout\);

-- Location: LC_X1_Y5_N5
\inst6SA~0\ : maxv_lcell
-- Equation(s):
-- \inst6SA~0_combout\ = (\D~combout\ & (!\C~combout\ & (\B~combout\ $ (\A~combout\)))) # (!\D~combout\ & ((\B~combout\ & ((!\A~combout\))) # (!\B~combout\ & (!\C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "034d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6SA~0_combout\);

-- Location: LC_X1_Y5_N6
\inst6SA22~0\ : maxv_lcell
-- Equation(s):
-- \inst6SA22~0_combout\ = (\A~combout\) # ((\B~combout\ & ((!\C~combout\) # (!\D~combout\))) # (!\B~combout\ & ((\C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D~combout\,
	datab => \B~combout\,
	datac => \C~combout\,
	datad => \A~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst6SA22~0_combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Ya~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_insFt5~0_combout\,
	oe => VCC,
	padio => ww_Ya);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yb~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst5~0_combout\,
	oe => VCC,
	padio => ww_Yb);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst15~0_combout\,
	oe => VCC,
	padio => ww_Yc);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yd~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst5D~0_combout\,
	oe => VCC,
	padio => ww_Yd);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Ye~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17~0_combout\,
	oe => VCC,
	padio => ww_Ye);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yf~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst6SA~0_combout\,
	oe => VCC,
	padio => ww_Yf);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Yg~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst6SA22~0_combout\,
	oe => VCC,
	padio => ww_Yg);
END structure;


