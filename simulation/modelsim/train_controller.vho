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
-- VERSION "Version 20.2.0 Build 50 06/11/2020 SC Pro Edition"

-- DATE "01/05/2023 10:35:11"

-- 
-- Device: Altera 10CX220YF780I5G Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONE10GX;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10GX.CYCLONE10GX_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	train_crossing_system IS
    PORT (
	traffic_red : OUT std_logic;
	traffic_yellow : OUT std_logic;
	traffic_green : OUT std_logic;
	pedestrian_red : OUT std_logic;
	pedestrian_green : OUT std_logic;
	train_red : OUT std_logic;
	train_green : OUT std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	button_pressed : IN std_logic;
	pedestrian_request : IN std_logic;
	train_present : IN std_logic
	);
END train_crossing_system;

-- Design Ports Information
-- traffic_red	=>  Location: PIN_AA1,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- traffic_yellow	=>  Location: PIN_AF2,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- traffic_green	=>  Location: PIN_AE1,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- pedestrian_red	=>  Location: PIN_AH3,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- pedestrian_green	=>  Location: PIN_AE4,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- train_red	=>  Location: PIN_Y7,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- train_green	=>  Location: PIN_Y5,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T9,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AA7,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- button_pressed	=>  Location: PIN_G1,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- pedestrian_request	=>  Location: PIN_M4,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- train_present	=>  Location: PIN_U3,	 I/O Standard: 1.8 V,	 Current Strength: Default


ARCHITECTURE structure OF train_crossing_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_traffic_red : std_logic;
SIGNAL ww_traffic_yellow : std_logic;
SIGNAL ww_traffic_green : std_logic;
SIGNAL ww_pedestrian_red : std_logic;
SIGNAL ww_pedestrian_green : std_logic;
SIGNAL ww_train_red : std_logic;
SIGNAL ww_train_green : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_button_pressed : std_logic;
SIGNAL ww_pedestrian_request : std_logic;
SIGNAL ww_train_present : std_logic;
SIGNAL \traffic_red~pad_padout\ : std_logic;
SIGNAL \traffic_red~padSIMOUT\ : std_logic;
SIGNAL \traffic_yellow~pad_padout\ : std_logic;
SIGNAL \traffic_yellow~padSIMOUT\ : std_logic;
SIGNAL \traffic_green~pad_padout\ : std_logic;
SIGNAL \traffic_green~padSIMOUT\ : std_logic;
SIGNAL \pedestrian_red~pad_padout\ : std_logic;
SIGNAL \pedestrian_red~padSIMOUT\ : std_logic;
SIGNAL \pedestrian_green~pad_padout\ : std_logic;
SIGNAL \pedestrian_green~padSIMOUT\ : std_logic;
SIGNAL \train_red~pad_padout\ : std_logic;
SIGNAL \train_red~padSIMOUT\ : std_logic;
SIGNAL \train_green~pad_padout\ : std_logic;
SIGNAL \train_green~padSIMOUT\ : std_logic;
SIGNAL \reset~pad_padout\ : std_logic;
SIGNAL \clk~pad_padout\ : std_logic;
SIGNAL \button_pressed~pad_padout\ : std_logic;
SIGNAL \pedestrian_request~pad_padout\ : std_logic;
SIGNAL \train_present~pad_padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \button_pressed~input_o\ : std_logic;
SIGNAL \traffic_lights_inst|i27~0_combout\ : std_logic;
SIGNAL \traffic_lights_inst|state.train_red~q\ : std_logic;
SIGNAL \traffic_lights_inst|i28~0_combout\ : std_logic;
SIGNAL \traffic_lights_inst|state.train_yellow~q\ : std_logic;
SIGNAL \traffic_lights_inst|i26~0_combout\ : std_logic;
SIGNAL \traffic_lights_inst|state.green~q\ : std_logic;
SIGNAL \traffic_lights_inst|i25~0_combout\ : std_logic;
SIGNAL \traffic_lights_inst|state.yellow~q\ : std_logic;
SIGNAL \traffic_lights_inst|i24~0_combout\ : std_logic;
SIGNAL \traffic_lights_inst|state.red~q\ : std_logic;
SIGNAL \traffic_lights_inst|i38~combout\ : std_logic;
SIGNAL \traffic_lights_inst|i22~combout\ : std_logic;
SIGNAL \pedestrian_request~input_o\ : std_logic;
SIGNAL \train_present~input_o\ : std_logic;
SIGNAL \pedestrian_crossing_inst|i29~0_combout\ : std_logic;
SIGNAL \pedestrian_crossing_inst|state.red~q\ : std_logic;
SIGNAL \pedestrian_crossing_inst|i31~0_combout\ : std_logic;
SIGNAL \pedestrian_crossing_inst|state.waiting~q\ : std_logic;
SIGNAL \pedestrian_crossing_inst|i30~0_combout\ : std_logic;
SIGNAL \pedestrian_crossing_inst|state.green~q\ : std_logic;
SIGNAL \train_lights_inst|i9~0_combout\ : std_logic;
SIGNAL \train_lights_inst|state~q\ : std_logic;
SIGNAL \ALT_INV_button_pressed~input_o\ : std_logic;
SIGNAL \pedestrian_crossing_inst|ALT_INV_state.green~q\ : std_logic;
SIGNAL \pedestrian_crossing_inst|ALT_INV_state.red~q\ : std_logic;
SIGNAL \pedestrian_crossing_inst|ALT_INV_state.waiting~q\ : std_logic;
SIGNAL \ALT_INV_pedestrian_request~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \traffic_lights_inst|ALT_INV_i38~combout\ : std_logic;
SIGNAL \traffic_lights_inst|ALT_INV_state.green~q\ : std_logic;
SIGNAL \traffic_lights_inst|ALT_INV_state.red~q\ : std_logic;
SIGNAL \traffic_lights_inst|ALT_INV_state.train_red~q\ : std_logic;
SIGNAL \traffic_lights_inst|ALT_INV_state.train_yellow~q\ : std_logic;
SIGNAL \traffic_lights_inst|ALT_INV_state.yellow~q\ : std_logic;
SIGNAL \train_lights_inst|ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_train_present~input_o\ : std_logic;

BEGIN

traffic_red <= ww_traffic_red;
traffic_yellow <= ww_traffic_yellow;
traffic_green <= ww_traffic_green;
pedestrian_red <= ww_pedestrian_red;
pedestrian_green <= ww_pedestrian_green;
train_red <= ww_train_red;
train_green <= ww_train_green;
ww_reset <= reset;
ww_clk <= clk;
ww_button_pressed <= button_pressed;
ww_pedestrian_request <= pedestrian_request;
ww_train_present <= train_present;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_button_pressed~input_o\ <= NOT \button_pressed~input_o\;
\pedestrian_crossing_inst|ALT_INV_state.green~q\ <= NOT \pedestrian_crossing_inst|state.green~q\;
\pedestrian_crossing_inst|ALT_INV_state.red~q\ <= NOT \pedestrian_crossing_inst|state.red~q\;
\pedestrian_crossing_inst|ALT_INV_state.waiting~q\ <= NOT \pedestrian_crossing_inst|state.waiting~q\;
\ALT_INV_pedestrian_request~input_o\ <= NOT \pedestrian_request~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\traffic_lights_inst|ALT_INV_i38~combout\ <= NOT \traffic_lights_inst|i38~combout\;
\traffic_lights_inst|ALT_INV_state.green~q\ <= NOT \traffic_lights_inst|state.green~q\;
\traffic_lights_inst|ALT_INV_state.red~q\ <= NOT \traffic_lights_inst|state.red~q\;
\traffic_lights_inst|ALT_INV_state.train_red~q\ <= NOT \traffic_lights_inst|state.train_red~q\;
\traffic_lights_inst|ALT_INV_state.train_yellow~q\ <= NOT \traffic_lights_inst|state.train_yellow~q\;
\traffic_lights_inst|ALT_INV_state.yellow~q\ <= NOT \traffic_lights_inst|state.yellow~q\;
\train_lights_inst|ALT_INV_state~q\ <= NOT \train_lights_inst|state~q\;
\ALT_INV_train_present~input_o\ <= NOT \train_present~input_o\;

-- Location: IOOBUF_X102_Y15_N48
\traffic_red~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \traffic_lights_inst|i38~combout\,
	devoe => ww_devoe,
	O => ww_traffic_red);

-- Location: IOOBUF_X102_Y15_N33
\traffic_yellow~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \traffic_lights_inst|i22~combout\,
	devoe => ww_devoe,
	O => ww_traffic_yellow);

-- Location: IOOBUF_X102_Y14_N33
\traffic_green~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \traffic_lights_inst|ALT_INV_state.green~q\,
	devoe => ww_devoe,
	O => ww_traffic_green);

-- Location: IOOBUF_X102_Y17_N18
\pedestrian_red~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \pedestrian_crossing_inst|state.waiting~q\,
	devoe => ww_devoe,
	O => ww_pedestrian_red);

-- Location: IOOBUF_X102_Y14_N18
\pedestrian_green~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \pedestrian_crossing_inst|state.green~q\,
	devoe => ww_devoe,
	O => ww_pedestrian_green);

-- Location: IOOBUF_X102_Y12_N63
\train_red~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \train_lights_inst|state~q\,
	devoe => ww_devoe,
	O => ww_train_red);

-- Location: IOOBUF_X102_Y11_N63
\train_green~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \train_lights_inst|ALT_INV_state~q\,
	devoe => ww_devoe,
	O => ww_train_green);

-- Location: IOIBUF_X102_Y7_N47
\clk~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_clk,
	O => \clk~input_o\);

-- Location: CLKCTRL_3A_G_I23
\clk~inputCLKENA0\ : cyclone10gx_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	INCLK => \clk~input_o\,
	OUTCLK => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X102_Y42_N62
\reset~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_reset,
	O => \reset~input_o\);

-- Location: IOIBUF_X102_Y42_N32
\button_pressed~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_button_pressed,
	O => \button_pressed~input_o\);

-- Location: LABCELL_X101_Y25_N45
\traffic_lights_inst|i27~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \traffic_lights_inst|i27~0_combout\ = (\button_pressed~input_o\ & (!\reset~input_o\ & ((!\traffic_lights_inst|state.red~q\) # (\traffic_lights_inst|state.train_red~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000100010000000100010001000000010001000100000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_button_pressed~input_o\,
	DATAB => \ALT_INV_reset~input_o\,
	DATAC => \traffic_lights_inst|ALT_INV_state.red~q\,
	DATAD => \traffic_lights_inst|ALT_INV_state.train_red~q\,
	COMBOUT => \traffic_lights_inst|i27~0_combout\);

-- Location: FF_X101_Y25_N47
\traffic_lights_inst|state.train_red\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \traffic_lights_inst|i27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \traffic_lights_inst|state.train_red~q\);

-- Location: LABCELL_X101_Y25_N36
\traffic_lights_inst|i28~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \traffic_lights_inst|i28~0_combout\ = (!\reset~input_o\ & (!\button_pressed~input_o\ & \traffic_lights_inst|state.train_red~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAB => \ALT_INV_reset~input_o\,
	DATAC => \ALT_INV_button_pressed~input_o\,
	DATAD => \traffic_lights_inst|ALT_INV_state.train_red~q\,
	COMBOUT => \traffic_lights_inst|i28~0_combout\);

-- Location: FF_X101_Y25_N38
\traffic_lights_inst|state.train_yellow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \traffic_lights_inst|i28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \traffic_lights_inst|state.train_yellow~q\);

-- Location: LABCELL_X101_Y25_N42
\traffic_lights_inst|i26~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \traffic_lights_inst|i26~0_combout\ = (!\reset~input_o\ & (!\traffic_lights_inst|state.red~q\ & !\button_pressed~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAB => \ALT_INV_reset~input_o\,
	DATAC => \traffic_lights_inst|ALT_INV_state.red~q\,
	DATAD => \ALT_INV_button_pressed~input_o\,
	COMBOUT => \traffic_lights_inst|i26~0_combout\);

-- Location: FF_X101_Y25_N43
\traffic_lights_inst|state.green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \traffic_lights_inst|i26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \traffic_lights_inst|state.green~q\);

-- Location: LABCELL_X101_Y25_N48
\traffic_lights_inst|i25~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \traffic_lights_inst|i25~0_combout\ = (!\reset~input_o\ & \traffic_lights_inst|state.green~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAB => \ALT_INV_reset~input_o\,
	DATAC => \traffic_lights_inst|ALT_INV_state.green~q\,
	COMBOUT => \traffic_lights_inst|i25~0_combout\);

-- Location: FF_X101_Y25_N49
\traffic_lights_inst|state.yellow\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \traffic_lights_inst|i25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \traffic_lights_inst|state.yellow~q\);

-- Location: LABCELL_X101_Y25_N51
\traffic_lights_inst|i24~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \traffic_lights_inst|i24~0_combout\ = ( !\traffic_lights_inst|state.yellow~q\ & ( (!\reset~input_o\ & !\traffic_lights_inst|state.train_yellow~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAB => \ALT_INV_reset~input_o\,
	DATAC => \traffic_lights_inst|ALT_INV_state.train_yellow~q\,
	DATAF => \traffic_lights_inst|ALT_INV_state.yellow~q\,
	COMBOUT => \traffic_lights_inst|i24~0_combout\);

-- Location: FF_X101_Y25_N52
\traffic_lights_inst|state.red\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \traffic_lights_inst|i24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \traffic_lights_inst|state.red~q\);

-- Location: LABCELL_X101_Y25_N54
\traffic_lights_inst|i38\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \traffic_lights_inst|i38~combout\ = ( \traffic_lights_inst|state.red~q\ & ( !\traffic_lights_inst|state.train_red~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAE => \traffic_lights_inst|ALT_INV_state.red~q\,
	DATAF => \traffic_lights_inst|ALT_INV_state.train_red~q\,
	COMBOUT => \traffic_lights_inst|i38~combout\);

-- Location: LABCELL_X101_Y25_N39
\traffic_lights_inst|i22\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \traffic_lights_inst|i22~combout\ = ( !\traffic_lights_inst|state.train_yellow~q\ & ( !\traffic_lights_inst|state.yellow~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAC => \traffic_lights_inst|ALT_INV_state.yellow~q\,
	DATAF => \traffic_lights_inst|ALT_INV_state.train_yellow~q\,
	COMBOUT => \traffic_lights_inst|i22~combout\);

-- Location: IOIBUF_X102_Y44_N47
\pedestrian_request~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_pedestrian_request,
	O => \pedestrian_request~input_o\);

-- Location: IOIBUF_X102_Y43_N17
\train_present~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_train_present,
	O => \train_present~input_o\);

-- Location: LABCELL_X101_Y25_N12
\pedestrian_crossing_inst|i29~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \pedestrian_crossing_inst|i29~0_combout\ = ( \pedestrian_crossing_inst|state.red~q\ & ( \pedestrian_crossing_inst|state.waiting~q\ & ( (\pedestrian_request~input_o\ & (!\train_present~input_o\ & (!\reset~input_o\ & !\traffic_lights_inst|i38~combout\))) ) 
-- ) ) # ( !\pedestrian_crossing_inst|state.red~q\ & ( \pedestrian_crossing_inst|state.waiting~q\ & ( (\pedestrian_request~input_o\ & !\reset~input_o\) ) ) ) # ( \pedestrian_crossing_inst|state.red~q\ & ( !\pedestrian_crossing_inst|state.waiting~q\ & ( 
-- (\pedestrian_request~input_o\ & !\reset~input_o\) ) ) ) # ( !\pedestrian_crossing_inst|state.red~q\ & ( !\pedestrian_crossing_inst|state.waiting~q\ & ( (\pedestrian_request~input_o\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_pedestrian_request~input_o\,
	DATAB => \ALT_INV_train_present~input_o\,
	DATAC => \ALT_INV_reset~input_o\,
	DATAD => \traffic_lights_inst|ALT_INV_i38~combout\,
	DATAE => \pedestrian_crossing_inst|ALT_INV_state.red~q\,
	DATAF => \pedestrian_crossing_inst|ALT_INV_state.waiting~q\,
	COMBOUT => \pedestrian_crossing_inst|i29~0_combout\);

-- Location: FF_X101_Y25_N13
\pedestrian_crossing_inst|state.red\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \pedestrian_crossing_inst|i29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \pedestrian_crossing_inst|state.red~q\);

-- Location: LABCELL_X101_Y25_N18
\pedestrian_crossing_inst|i31~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \pedestrian_crossing_inst|i31~0_combout\ = ( \pedestrian_crossing_inst|state.waiting~q\ & ( \traffic_lights_inst|i38~combout\ & ( (\pedestrian_request~input_o\ & (\train_present~input_o\ & (!\pedestrian_crossing_inst|state.red~q\ & !\reset~input_o\))) ) ) 
-- ) # ( !\pedestrian_crossing_inst|state.waiting~q\ & ( \traffic_lights_inst|i38~combout\ & ( (\pedestrian_request~input_o\ & (\train_present~input_o\ & (!\pedestrian_crossing_inst|state.red~q\ & !\reset~input_o\))) ) ) ) # ( 
-- \pedestrian_crossing_inst|state.waiting~q\ & ( !\traffic_lights_inst|i38~combout\ & ( (\pedestrian_request~input_o\ & (!\reset~input_o\ & ((!\train_present~input_o\) # (!\pedestrian_crossing_inst|state.red~q\)))) ) ) ) # ( 
-- !\pedestrian_crossing_inst|state.waiting~q\ & ( !\traffic_lights_inst|i38~combout\ & ( (\pedestrian_request~input_o\ & (!\pedestrian_crossing_inst|state.red~q\ & !\reset~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010101000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_pedestrian_request~input_o\,
	DATAB => \ALT_INV_train_present~input_o\,
	DATAC => \pedestrian_crossing_inst|ALT_INV_state.red~q\,
	DATAD => \ALT_INV_reset~input_o\,
	DATAE => \pedestrian_crossing_inst|ALT_INV_state.waiting~q\,
	DATAF => \traffic_lights_inst|ALT_INV_i38~combout\,
	COMBOUT => \pedestrian_crossing_inst|i31~0_combout\);

-- Location: FF_X101_Y25_N20
\pedestrian_crossing_inst|state.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \pedestrian_crossing_inst|i31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \pedestrian_crossing_inst|state.waiting~q\);

-- Location: LABCELL_X101_Y25_N30
\pedestrian_crossing_inst|i30~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \pedestrian_crossing_inst|i30~0_combout\ = ( !\pedestrian_crossing_inst|state.red~q\ & ( (\traffic_lights_inst|state.red~q\ & (!\reset~input_o\ & (!\train_present~input_o\ & (!\traffic_lights_inst|state.train_red~q\ & \pedestrian_request~input_o\)))) ) ) 
-- # ( \pedestrian_crossing_inst|state.red~q\ & ( ((!\reset~input_o\ & (\pedestrian_crossing_inst|state.green~q\ & ((\pedestrian_request~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000001000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \traffic_lights_inst|ALT_INV_state.red~q\,
	DATAB => \ALT_INV_reset~input_o\,
	DATAC => \pedestrian_crossing_inst|ALT_INV_state.green~q\,
	DATAD => \traffic_lights_inst|ALT_INV_state.train_red~q\,
	DATAE => \pedestrian_crossing_inst|ALT_INV_state.red~q\,
	DATAF => \ALT_INV_pedestrian_request~input_o\,
	DATAG => \ALT_INV_train_present~input_o\,
	COMBOUT => \pedestrian_crossing_inst|i30~0_combout\);

-- Location: FF_X101_Y25_N31
\pedestrian_crossing_inst|state.green\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \pedestrian_crossing_inst|i30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \pedestrian_crossing_inst|state.green~q\);

-- Location: LABCELL_X101_Y25_N27
\train_lights_inst|i9~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \train_lights_inst|i9~0_combout\ = ( \train_lights_inst|state~q\ & ( \train_present~input_o\ ) ) # ( !\train_lights_inst|state~q\ & ( \train_present~input_o\ & ( \button_pressed~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAC => \ALT_INV_button_pressed~input_o\,
	DATAE => \train_lights_inst|ALT_INV_state~q\,
	DATAF => \ALT_INV_train_present~input_o\,
	COMBOUT => \train_lights_inst|i9~0_combout\);

-- Location: FF_X101_Y25_N28
\train_lights_inst|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \clk~inputCLKENA0_outclk\,
	D => \train_lights_inst|i9~0_combout\,
	SCLR => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \train_lights_inst|state~q\);
END structure;


