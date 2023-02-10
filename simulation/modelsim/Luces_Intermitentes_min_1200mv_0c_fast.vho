-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/08/2023 17:33:28"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Luces_Exp1 IS
    PORT (
	LD : OUT std_logic;
	CLK : IN std_logic;
	OFF : IN std_logic;
	EMER : IN std_logic;
	SD : IN std_logic;
	SI : IN std_logic;
	LI : OUT std_logic
	);
END Luces_Exp1;

-- Design Ports Information
-- LD	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LI	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SD	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SI	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OFF	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EMER	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Luces_Exp1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LD : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_OFF : std_logic;
SIGNAL ww_EMER : std_logic;
SIGNAL ww_SD : std_logic;
SIGNAL ww_SI : std_logic;
SIGNAL ww_LI : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LD~output_o\ : std_logic;
SIGNAL \LI~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\ : std_logic;
SIGNAL \EMER~input_o\ : std_logic;
SIGNAL \OFF~input_o\ : std_logic;
SIGNAL \SD~input_o\ : std_logic;
SIGNAL \SI~input_o\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst8~1_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst20~1_combout\ : std_logic;
SIGNAL \inst20~2_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(25 DOWNTO 0);

BEGIN

LD <= ww_LD;
ww_CLK <= CLK;
ww_OFF <= OFF;
ww_EMER <= EMER;
ww_SD <= SD;
ww_SI <= SI;
LI <= ww_LI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\LD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \LD~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LI~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \LI~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y28_N6
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X16_Y28_N20
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X16_Y27_N22
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X15_Y27_N30
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & 
-- (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25) & \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24),
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22),
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25),
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23),
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X16_Y27_N8
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X16_Y27_N0
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & 
-- (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X16_Y27_N6
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ & 
-- (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ & 
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X15_Y28_N0
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ = (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\);

-- Location: LCCOMB_X15_Y27_N24
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\);

-- Location: LCCOMB_X15_Y27_N26
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\ = !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\);

-- Location: LCCOMB_X15_Y28_N2
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\);

-- Location: LCCOMB_X15_Y28_N4
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\);

-- Location: LCCOMB_X15_Y27_N28
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\) # 
-- ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ & 
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\,
	datac => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~0_combout\,
	datad => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: FF_X15_Y28_N7
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X15_Y28_N8
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X15_Y28_N9
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X15_Y28_N10
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X15_Y28_N11
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X15_Y28_N12
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X15_Y28_N13
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X15_Y28_N14
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X15_Y28_N15
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X15_Y28_N16
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X15_Y28_N17
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X15_Y28_N18
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X15_Y28_N19
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X15_Y28_N20
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X15_Y28_N21
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X15_Y28_N22
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X15_Y28_N23
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X15_Y28_N24
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X15_Y28_N25
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X15_Y28_N26
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X15_Y28_N27
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X15_Y28_N28
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X15_Y28_N29
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X15_Y28_N30
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X15_Y28_N31
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X15_Y27_N0
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X15_Y27_N1
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X15_Y27_N2
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X15_Y27_N3
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X15_Y27_N4
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X15_Y27_N5
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X15_Y27_N6
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X15_Y27_N7
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X15_Y27_N8
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\);

-- Location: FF_X15_Y27_N9
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(17));

-- Location: LCCOMB_X15_Y27_N10
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita17~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\);

-- Location: FF_X15_Y27_N11
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(18));

-- Location: LCCOMB_X15_Y27_N12
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita18~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\);

-- Location: FF_X15_Y27_N13
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(19));

-- Location: LCCOMB_X15_Y27_N14
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita19~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\);

-- Location: FF_X15_Y27_N15
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(20));

-- Location: LCCOMB_X15_Y27_N16
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita20~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\);

-- Location: FF_X15_Y27_N17
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(21));

-- Location: LCCOMB_X15_Y27_N18
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita21~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\);

-- Location: FF_X15_Y27_N19
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(22));

-- Location: LCCOMB_X15_Y27_N20
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\)) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23) & ((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (GND)))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ = CARRY((!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\) # (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita22~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\);

-- Location: FF_X15_Y27_N21
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(23));

-- Location: LCCOMB_X15_Y27_N22
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\ = (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & (\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ $ (GND))) # 
-- (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & (!\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\ & VCC))
-- \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\ = CARRY((\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24) & !\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24),
	datad => VCC,
	cin => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita23~COUT\,
	combout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\,
	cout => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~COUT\);

-- Location: FF_X15_Y27_N23
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita24~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(24));

-- Location: FF_X15_Y27_N25
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_comb_bita25~combout\,
	asdata => \~GND~combout\,
	sload => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(25));

-- Location: CLKCTRL_G14
\inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N1
\EMER~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EMER,
	o => \EMER~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\OFF~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OFF,
	o => \OFF~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD,
	o => \SD~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SI,
	o => \SI~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\inst20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (\OFF~input_o\) # ((!\SD~input_o\ & \SI~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OFF~input_o\,
	datac => \SD~input_o\,
	datad => \SI~input_o\,
	combout => \inst20~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\inst8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (\OFF~input_o\ & (\EMER~input_o\)) # (!\OFF~input_o\ & (!\EMER~input_o\ & ((\SD~input_o\) # (\SI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OFF~input_o\,
	datab => \EMER~input_o\,
	datac => \SD~input_o\,
	datad => \SI~input_o\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X1_Y25_N18
\inst8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~1_combout\ = (\inst8~0_combout\ & (\OFF~input_o\ & ((!\inst3~q\) # (!\inst2~q\)))) # (!\inst8~0_combout\ & ((\OFF~input_o\ $ (!\inst3~q\)) # (!\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~0_combout\,
	datab => \OFF~input_o\,
	datac => \inst2~q\,
	datad => \inst3~q\,
	combout => \inst8~1_combout\);

-- Location: FF_X1_Y25_N19
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\,
	d => \inst8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X1_Y25_N2
\inst20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~1_combout\ = \inst2~q\ $ (((!\EMER~input_o\ & \SD~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EMER~input_o\,
	datac => \SD~input_o\,
	datad => \inst2~q\,
	combout => \inst20~1_combout\);

-- Location: LCCOMB_X1_Y25_N20
\inst20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~2_combout\ = (\EMER~input_o\ & (((!\inst20~1_combout\) # (!\inst3~q\)))) # (!\EMER~input_o\ & (!\inst20~0_combout\ & ((!\inst20~1_combout\) # (!\inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EMER~input_o\,
	datab => \inst20~0_combout\,
	datac => \inst3~q\,
	datad => \inst20~1_combout\,
	combout => \inst20~2_combout\);

-- Location: FF_X1_Y25_N21
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst33|b2v_inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[25]~clkctrl_outclk\,
	d => \inst20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

ww_LD <= \LD~output_o\;

ww_LI <= \LI~output_o\;
END structure;


