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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/30/2024 22:13:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_test IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	ALU_Sel : IN std_logic_vector(2 DOWNTO 0);
	NZVC : OUT std_logic_vector(3 DOWNTO 0);
	display_result1 : OUT std_logic_vector(6 DOWNTO 0);
	display_result2 : OUT std_logic_vector(6 DOWNTO 0);
	display_b1 : OUT std_logic_vector(6 DOWNTO 0);
	display_b2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ALU_test;

-- Design Ports Information
-- NZVC[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NZVC[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result2[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result2[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result2[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result2[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result2[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result2[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_result2[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b1[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b1[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b1[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b1[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b1[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b1[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b1[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display_b2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Sel[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_NZVC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display_result1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_result2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_b1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display_b2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \A0|Equal0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \NZVC[0]~output_o\ : std_logic;
SIGNAL \NZVC[1]~output_o\ : std_logic;
SIGNAL \NZVC[2]~output_o\ : std_logic;
SIGNAL \NZVC[3]~output_o\ : std_logic;
SIGNAL \display_result1[0]~output_o\ : std_logic;
SIGNAL \display_result1[1]~output_o\ : std_logic;
SIGNAL \display_result1[2]~output_o\ : std_logic;
SIGNAL \display_result1[3]~output_o\ : std_logic;
SIGNAL \display_result1[4]~output_o\ : std_logic;
SIGNAL \display_result1[5]~output_o\ : std_logic;
SIGNAL \display_result1[6]~output_o\ : std_logic;
SIGNAL \display_result2[0]~output_o\ : std_logic;
SIGNAL \display_result2[1]~output_o\ : std_logic;
SIGNAL \display_result2[2]~output_o\ : std_logic;
SIGNAL \display_result2[3]~output_o\ : std_logic;
SIGNAL \display_result2[4]~output_o\ : std_logic;
SIGNAL \display_result2[5]~output_o\ : std_logic;
SIGNAL \display_result2[6]~output_o\ : std_logic;
SIGNAL \display_b1[0]~output_o\ : std_logic;
SIGNAL \display_b1[1]~output_o\ : std_logic;
SIGNAL \display_b1[2]~output_o\ : std_logic;
SIGNAL \display_b1[3]~output_o\ : std_logic;
SIGNAL \display_b1[4]~output_o\ : std_logic;
SIGNAL \display_b1[5]~output_o\ : std_logic;
SIGNAL \display_b1[6]~output_o\ : std_logic;
SIGNAL \display_b2[0]~output_o\ : std_logic;
SIGNAL \display_b2[1]~output_o\ : std_logic;
SIGNAL \display_b2[2]~output_o\ : std_logic;
SIGNAL \display_b2[3]~output_o\ : std_logic;
SIGNAL \display_b2[4]~output_o\ : std_logic;
SIGNAL \display_b2[5]~output_o\ : std_logic;
SIGNAL \display_b2[6]~output_o\ : std_logic;
SIGNAL \ALU_Sel[2]~input_o\ : std_logic;
SIGNAL \ALU_Sel[0]~input_o\ : std_logic;
SIGNAL \A0|Equal0~1_combout\ : std_logic;
SIGNAL \A0|Equal0~1clkctrl_outclk\ : std_logic;
SIGNAL \ALU_Sel[1]~input_o\ : std_logic;
SIGNAL \A0|Equal0~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \A0|Add0~1\ : std_logic;
SIGNAL \A0|Add0~3\ : std_logic;
SIGNAL \A0|Add0~5\ : std_logic;
SIGNAL \A0|Add0~7\ : std_logic;
SIGNAL \A0|Add0~9\ : std_logic;
SIGNAL \A0|Add0~11\ : std_logic;
SIGNAL \A0|Add0~13\ : std_logic;
SIGNAL \A0|Add0~14_combout\ : std_logic;
SIGNAL \A0|Add1~1\ : std_logic;
SIGNAL \A0|Add1~3\ : std_logic;
SIGNAL \A0|Add1~5\ : std_logic;
SIGNAL \A0|Add1~7\ : std_logic;
SIGNAL \A0|Add1~9\ : std_logic;
SIGNAL \A0|Add1~11\ : std_logic;
SIGNAL \A0|Add1~13\ : std_logic;
SIGNAL \A0|Add1~14_combout\ : std_logic;
SIGNAL \A0|NZVC[1]~0_combout\ : std_logic;
SIGNAL \A0|NZVC[1]~1_combout\ : std_logic;
SIGNAL \A0|Add1~2_combout\ : std_logic;
SIGNAL \A0|Add1~0_combout\ : std_logic;
SIGNAL \A0|NZVC[2]~5_combout\ : std_logic;
SIGNAL \A0|Add1~12_combout\ : std_logic;
SIGNAL \A0|Add0~6_combout\ : std_logic;
SIGNAL \A0|Add0~10_combout\ : std_logic;
SIGNAL \A0|Add0~4_combout\ : std_logic;
SIGNAL \A0|Add0~8_combout\ : std_logic;
SIGNAL \A0|NZVC[2]~3_combout\ : std_logic;
SIGNAL \A0|Add0~12_combout\ : std_logic;
SIGNAL \A0|Add0~0_combout\ : std_logic;
SIGNAL \A0|Add0~2_combout\ : std_logic;
SIGNAL \A0|NZVC[2]~2_combout\ : std_logic;
SIGNAL \A0|NZVC[2]~4_combout\ : std_logic;
SIGNAL \A0|Add1~6_combout\ : std_logic;
SIGNAL \A0|Add1~8_combout\ : std_logic;
SIGNAL \A0|Add1~10_combout\ : std_logic;
SIGNAL \A0|Add1~4_combout\ : std_logic;
SIGNAL \A0|NZVC[2]~6_combout\ : std_logic;
SIGNAL \A0|NZVC[2]~7_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \A1|F[0]~0_combout\ : std_logic;
SIGNAL \A1|F[1]~1_combout\ : std_logic;
SIGNAL \A1|F[2]~2_combout\ : std_logic;
SIGNAL \A1|F[3]~3_combout\ : std_logic;
SIGNAL \A1|F[4]~4_combout\ : std_logic;
SIGNAL \A1|F[5]~5_combout\ : std_logic;
SIGNAL \A1|F[6]~6_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \A0|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \A2|F[0]~0_combout\ : std_logic;
SIGNAL \A2|F[1]~1_combout\ : std_logic;
SIGNAL \A2|F[2]~2_combout\ : std_logic;
SIGNAL \A2|F[3]~3_combout\ : std_logic;
SIGNAL \A2|F[4]~4_combout\ : std_logic;
SIGNAL \A2|F[5]~5_combout\ : std_logic;
SIGNAL \A2|F[6]~6_combout\ : std_logic;
SIGNAL \A3|F[0]~0_combout\ : std_logic;
SIGNAL \A3|F[1]~1_combout\ : std_logic;
SIGNAL \A3|F[2]~2_combout\ : std_logic;
SIGNAL \A3|F[3]~3_combout\ : std_logic;
SIGNAL \A3|F[4]~4_combout\ : std_logic;
SIGNAL \A3|F[5]~5_combout\ : std_logic;
SIGNAL \A3|F[6]~6_combout\ : std_logic;
SIGNAL \A4|F[0]~0_combout\ : std_logic;
SIGNAL \A4|F[1]~1_combout\ : std_logic;
SIGNAL \A4|F[2]~2_combout\ : std_logic;
SIGNAL \A4|F[3]~3_combout\ : std_logic;
SIGNAL \A4|F[4]~4_combout\ : std_logic;
SIGNAL \A4|F[5]~5_combout\ : std_logic;
SIGNAL \A4|F[6]~6_combout\ : std_logic;
SIGNAL \A0|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A0|NZVC\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A4|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \A3|ALT_INV_F[2]~2_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ALU_Sel <= ALU_Sel;
NZVC <= ww_NZVC;
display_result1 <= ww_display_result1;
display_result2 <= ww_display_result2;
display_b1 <= ww_display_b1;
display_b2 <= ww_display_b2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\A0|Equal0~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A0|Equal0~1_combout\);
\A4|ALT_INV_F[2]~2_combout\ <= NOT \A4|F[2]~2_combout\;
\A3|ALT_INV_F[2]~2_combout\ <= NOT \A3|F[2]~2_combout\;

-- Location: IOOBUF_X0_Y20_N9
\NZVC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|NZVC\(0),
	devoe => ww_devoe,
	o => \NZVC[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\NZVC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|NZVC\(1),
	devoe => ww_devoe,
	o => \NZVC[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\NZVC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|NZVC\(2),
	devoe => ww_devoe,
	o => \NZVC[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\NZVC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A0|NZVC\(3),
	devoe => ww_devoe,
	o => \NZVC[3]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\display_result1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|F[0]~0_combout\,
	devoe => ww_devoe,
	o => \display_result1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\display_result1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|F[1]~1_combout\,
	devoe => ww_devoe,
	o => \display_result1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\display_result1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|F[2]~2_combout\,
	devoe => ww_devoe,
	o => \display_result1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\display_result1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|F[3]~3_combout\,
	devoe => ww_devoe,
	o => \display_result1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\display_result1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|F[4]~4_combout\,
	devoe => ww_devoe,
	o => \display_result1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\display_result1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|F[5]~5_combout\,
	devoe => ww_devoe,
	o => \display_result1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\display_result1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|F[6]~6_combout\,
	devoe => ww_devoe,
	o => \display_result1[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\display_result2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[0]~0_combout\,
	devoe => ww_devoe,
	o => \display_result2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\display_result2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[1]~1_combout\,
	devoe => ww_devoe,
	o => \display_result2[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\display_result2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[2]~2_combout\,
	devoe => ww_devoe,
	o => \display_result2[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\display_result2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[3]~3_combout\,
	devoe => ww_devoe,
	o => \display_result2[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\display_result2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[4]~4_combout\,
	devoe => ww_devoe,
	o => \display_result2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\display_result2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[5]~5_combout\,
	devoe => ww_devoe,
	o => \display_result2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\display_result2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|F[6]~6_combout\,
	devoe => ww_devoe,
	o => \display_result2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\display_b1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|F[0]~0_combout\,
	devoe => ww_devoe,
	o => \display_b1[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\display_b1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|F[1]~1_combout\,
	devoe => ww_devoe,
	o => \display_b1[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\display_b1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|ALT_INV_F[2]~2_combout\,
	devoe => ww_devoe,
	o => \display_b1[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\display_b1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|F[3]~3_combout\,
	devoe => ww_devoe,
	o => \display_b1[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\display_b1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|F[4]~4_combout\,
	devoe => ww_devoe,
	o => \display_b1[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\display_b1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|F[5]~5_combout\,
	devoe => ww_devoe,
	o => \display_b1[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\display_b1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3|F[6]~6_combout\,
	devoe => ww_devoe,
	o => \display_b1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\display_b2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|F[0]~0_combout\,
	devoe => ww_devoe,
	o => \display_b2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\display_b2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|F[1]~1_combout\,
	devoe => ww_devoe,
	o => \display_b2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\display_b2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|ALT_INV_F[2]~2_combout\,
	devoe => ww_devoe,
	o => \display_b2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\display_b2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|F[3]~3_combout\,
	devoe => ww_devoe,
	o => \display_b2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\display_b2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|F[4]~4_combout\,
	devoe => ww_devoe,
	o => \display_b2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\display_b2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|F[5]~5_combout\,
	devoe => ww_devoe,
	o => \display_b2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\display_b2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4|F[6]~6_combout\,
	devoe => ww_devoe,
	o => \display_b2[6]~output_o\);

-- Location: IOIBUF_X16_Y29_N22
\ALU_Sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(2),
	o => \ALU_Sel[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\ALU_Sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(0),
	o => \ALU_Sel[0]~input_o\);

-- Location: LCCOMB_X19_Y26_N0
\A0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Equal0~1_combout\ = (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Sel[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Equal0~1_combout\);

-- Location: CLKCTRL_G12
\A0|Equal0~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A0|Equal0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A0|Equal0~1clkctrl_outclk\);

-- Location: IOIBUF_X0_Y25_N1
\ALU_Sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALU_Sel(1),
	o => \ALU_Sel[1]~input_o\);

-- Location: LCCOMB_X16_Y26_N28
\A0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Equal0~0_combout\ = (!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\B[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X15_Y26_N18
\A0|Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~0_combout\ = \B[7]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[7]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Add0|auto_generated|_~0_combout\);

-- Location: IOIBUF_X23_Y0_N22
\B[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X15_Y26_N12
\A0|Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~1_combout\ = \B[6]~input_o\ $ (((!\ALU_Sel[0]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[0]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \B[6]~input_o\,
	combout => \A0|Add0|auto_generated|_~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\B[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X15_Y26_N30
\A0|Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~2_combout\ = \B[5]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Add0|auto_generated|_~2_combout\);

-- Location: IOIBUF_X0_Y27_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X16_Y26_N26
\A0|Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~3_combout\ = \B[4]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Add0|auto_generated|_~3_combout\);

-- Location: IOIBUF_X26_Y0_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X16_Y26_N0
\A0|Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~4_combout\ = \B[3]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Add0|auto_generated|_~4_combout\);

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X16_Y26_N2
\A0|Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~5_combout\ = \B[2]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Add0|auto_generated|_~5_combout\);

-- Location: IOIBUF_X28_Y0_N22
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X16_Y26_N24
\A0|Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~6_combout\ = \B[1]~input_o\ $ (((!\ALU_Sel[2]~input_o\ & (!\ALU_Sel[1]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[2]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Add0|auto_generated|_~6_combout\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X15_Y26_N16
\A0|Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|_~7_combout\ = \B[0]~input_o\ $ (((!\ALU_Sel[1]~input_o\ & (!\ALU_Sel[2]~input_o\ & !\ALU_Sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \ALU_Sel[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ALU_Sel[0]~input_o\,
	combout => \A0|Add0|auto_generated|_~7_combout\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X16_Y26_N4
\A0|Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[0]~1_cout\ = CARRY(!\A0|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Equal0~0_combout\,
	datad => VCC,
	cout => \A0|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X16_Y26_N6
\A0|Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[1]~2_combout\ = (\A0|Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (!\A0|Add0|auto_generated|result_int[0]~1_cout\)) # (!\A[0]~input_o\ & ((\A0|Add0|auto_generated|result_int[0]~1_cout\) # (GND))))) # 
-- (!\A0|Add0|auto_generated|_~7_combout\ & ((\A[0]~input_o\ & (\A0|Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\A[0]~input_o\ & (!\A0|Add0|auto_generated|result_int[0]~1_cout\))))
-- \A0|Add0|auto_generated|result_int[1]~3\ = CARRY((\A0|Add0|auto_generated|_~7_combout\ & ((!\A0|Add0|auto_generated|result_int[0]~1_cout\) # (!\A[0]~input_o\))) # (!\A0|Add0|auto_generated|_~7_combout\ & (!\A[0]~input_o\ & 
-- !\A0|Add0|auto_generated|result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0|auto_generated|_~7_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \A0|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \A0|Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X16_Y26_N8
\A0|Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[2]~4_combout\ = ((\A0|Add0|auto_generated|_~6_combout\ $ (\A[1]~input_o\ $ (\A0|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \A0|Add0|auto_generated|result_int[2]~5\ = CARRY((\A0|Add0|auto_generated|_~6_combout\ & (\A[1]~input_o\ & !\A0|Add0|auto_generated|result_int[1]~3\)) # (!\A0|Add0|auto_generated|_~6_combout\ & ((\A[1]~input_o\) # 
-- (!\A0|Add0|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0|auto_generated|_~6_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[1]~3\,
	combout => \A0|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \A0|Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X16_Y26_N10
\A0|Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[3]~6_combout\ = (\A[2]~input_o\ & ((\A0|Add0|auto_generated|_~5_combout\ & (!\A0|Add0|auto_generated|result_int[2]~5\)) # (!\A0|Add0|auto_generated|_~5_combout\ & (\A0|Add0|auto_generated|result_int[2]~5\ & VCC)))) # 
-- (!\A[2]~input_o\ & ((\A0|Add0|auto_generated|_~5_combout\ & ((\A0|Add0|auto_generated|result_int[2]~5\) # (GND))) # (!\A0|Add0|auto_generated|_~5_combout\ & (!\A0|Add0|auto_generated|result_int[2]~5\))))
-- \A0|Add0|auto_generated|result_int[3]~7\ = CARRY((\A[2]~input_o\ & (\A0|Add0|auto_generated|_~5_combout\ & !\A0|Add0|auto_generated|result_int[2]~5\)) # (!\A[2]~input_o\ & ((\A0|Add0|auto_generated|_~5_combout\) # 
-- (!\A0|Add0|auto_generated|result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A0|Add0|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[2]~5\,
	combout => \A0|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \A0|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X16_Y26_N12
\A0|Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[4]~8_combout\ = ((\A0|Add0|auto_generated|_~4_combout\ $ (\A[3]~input_o\ $ (\A0|Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \A0|Add0|auto_generated|result_int[4]~9\ = CARRY((\A0|Add0|auto_generated|_~4_combout\ & (\A[3]~input_o\ & !\A0|Add0|auto_generated|result_int[3]~7\)) # (!\A0|Add0|auto_generated|_~4_combout\ & ((\A[3]~input_o\) # 
-- (!\A0|Add0|auto_generated|result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0|auto_generated|_~4_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[3]~7\,
	combout => \A0|Add0|auto_generated|result_int[4]~8_combout\,
	cout => \A0|Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X16_Y26_N14
\A0|Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[5]~10_combout\ = (\A[4]~input_o\ & ((\A0|Add0|auto_generated|_~3_combout\ & (!\A0|Add0|auto_generated|result_int[4]~9\)) # (!\A0|Add0|auto_generated|_~3_combout\ & (\A0|Add0|auto_generated|result_int[4]~9\ & VCC)))) # 
-- (!\A[4]~input_o\ & ((\A0|Add0|auto_generated|_~3_combout\ & ((\A0|Add0|auto_generated|result_int[4]~9\) # (GND))) # (!\A0|Add0|auto_generated|_~3_combout\ & (!\A0|Add0|auto_generated|result_int[4]~9\))))
-- \A0|Add0|auto_generated|result_int[5]~11\ = CARRY((\A[4]~input_o\ & (\A0|Add0|auto_generated|_~3_combout\ & !\A0|Add0|auto_generated|result_int[4]~9\)) # (!\A[4]~input_o\ & ((\A0|Add0|auto_generated|_~3_combout\) # 
-- (!\A0|Add0|auto_generated|result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A0|Add0|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[4]~9\,
	combout => \A0|Add0|auto_generated|result_int[5]~10_combout\,
	cout => \A0|Add0|auto_generated|result_int[5]~11\);

-- Location: LCCOMB_X16_Y26_N16
\A0|Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[6]~12_combout\ = ((\A[5]~input_o\ $ (\A0|Add0|auto_generated|_~2_combout\ $ (\A0|Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \A0|Add0|auto_generated|result_int[6]~13\ = CARRY((\A[5]~input_o\ & ((!\A0|Add0|auto_generated|result_int[5]~11\) # (!\A0|Add0|auto_generated|_~2_combout\))) # (!\A[5]~input_o\ & (!\A0|Add0|auto_generated|_~2_combout\ & 
-- !\A0|Add0|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A0|Add0|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[5]~11\,
	combout => \A0|Add0|auto_generated|result_int[6]~12_combout\,
	cout => \A0|Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X16_Y26_N18
\A0|Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[7]~14_combout\ = (\A0|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (!\A0|Add0|auto_generated|result_int[6]~13\)) # (!\A[6]~input_o\ & ((\A0|Add0|auto_generated|result_int[6]~13\) # (GND))))) # 
-- (!\A0|Add0|auto_generated|_~1_combout\ & ((\A[6]~input_o\ & (\A0|Add0|auto_generated|result_int[6]~13\ & VCC)) # (!\A[6]~input_o\ & (!\A0|Add0|auto_generated|result_int[6]~13\))))
-- \A0|Add0|auto_generated|result_int[7]~15\ = CARRY((\A0|Add0|auto_generated|_~1_combout\ & ((!\A0|Add0|auto_generated|result_int[6]~13\) # (!\A[6]~input_o\))) # (!\A0|Add0|auto_generated|_~1_combout\ & (!\A[6]~input_o\ & 
-- !\A0|Add0|auto_generated|result_int[6]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0|auto_generated|_~1_combout\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[6]~13\,
	combout => \A0|Add0|auto_generated|result_int[7]~14_combout\,
	cout => \A0|Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X16_Y26_N20
\A0|Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[8]~16_combout\ = ((\A[7]~input_o\ $ (\A0|Add0|auto_generated|_~0_combout\ $ (\A0|Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \A0|Add0|auto_generated|result_int[8]~17\ = CARRY((\A[7]~input_o\ & ((!\A0|Add0|auto_generated|result_int[7]~15\) # (!\A0|Add0|auto_generated|_~0_combout\))) # (!\A[7]~input_o\ & (!\A0|Add0|auto_generated|_~0_combout\ & 
-- !\A0|Add0|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A0|Add0|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \A0|Add0|auto_generated|result_int[7]~15\,
	combout => \A0|Add0|auto_generated|result_int[8]~16_combout\,
	cout => \A0|Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X16_Y26_N22
\A0|Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0|auto_generated|result_int[9]~18_combout\ = \A0|Add0|auto_generated|result_int[8]~17\ $ (!\A0|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A0|Equal0~0_combout\,
	cin => \A0|Add0|auto_generated|result_int[8]~17\,
	combout => \A0|Add0|auto_generated|result_int[9]~18_combout\);

-- Location: LCCOMB_X15_Y26_N22
\A0|NZVC[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC\(0) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|Add0|auto_generated|result_int[9]~18_combout\))) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|NZVC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|NZVC\(0),
	datac => \A0|Equal0~1clkctrl_outclk\,
	datad => \A0|Add0|auto_generated|result_int[9]~18_combout\,
	combout => \A0|NZVC\(0));

-- Location: LCCOMB_X14_Y26_N10
\A0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~0_combout\ = (\A[0]~input_o\ & (\B[0]~input_o\ $ (VCC))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & VCC))
-- \A0|Add0~1\ = CARRY((\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	combout => \A0|Add0~0_combout\,
	cout => \A0|Add0~1\);

-- Location: LCCOMB_X14_Y26_N12
\A0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\A0|Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\A0|Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\A0|Add0~1\)) # (!\A[1]~input_o\ & ((\A0|Add0~1\) # (GND)))))
-- \A0|Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\A0|Add0~1\)) # (!\B[1]~input_o\ & ((!\A0|Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \A0|Add0~1\,
	combout => \A0|Add0~2_combout\,
	cout => \A0|Add0~3\);

-- Location: LCCOMB_X14_Y26_N14
\A0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\A0|Add0~3\)))) # (GND)
-- \A0|Add0~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\A0|Add0~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\A0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \A0|Add0~3\,
	combout => \A0|Add0~4_combout\,
	cout => \A0|Add0~5\);

-- Location: LCCOMB_X14_Y26_N16
\A0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~6_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\A0|Add0~5\ & VCC)) # (!\A[3]~input_o\ & (!\A0|Add0~5\)))) # (!\B[3]~input_o\ & ((\A[3]~input_o\ & (!\A0|Add0~5\)) # (!\A[3]~input_o\ & ((\A0|Add0~5\) # (GND)))))
-- \A0|Add0~7\ = CARRY((\B[3]~input_o\ & (!\A[3]~input_o\ & !\A0|Add0~5\)) # (!\B[3]~input_o\ & ((!\A0|Add0~5\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \A0|Add0~5\,
	combout => \A0|Add0~6_combout\,
	cout => \A0|Add0~7\);

-- Location: LCCOMB_X14_Y26_N18
\A0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~8_combout\ = ((\B[4]~input_o\ $ (\A[4]~input_o\ $ (!\A0|Add0~7\)))) # (GND)
-- \A0|Add0~9\ = CARRY((\B[4]~input_o\ & ((\A[4]~input_o\) # (!\A0|Add0~7\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & !\A0|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datad => VCC,
	cin => \A0|Add0~7\,
	combout => \A0|Add0~8_combout\,
	cout => \A0|Add0~9\);

-- Location: LCCOMB_X14_Y26_N20
\A0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~10_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\ & (\A0|Add0~9\ & VCC)) # (!\B[5]~input_o\ & (!\A0|Add0~9\)))) # (!\A[5]~input_o\ & ((\B[5]~input_o\ & (!\A0|Add0~9\)) # (!\B[5]~input_o\ & ((\A0|Add0~9\) # (GND)))))
-- \A0|Add0~11\ = CARRY((\A[5]~input_o\ & (!\B[5]~input_o\ & !\A0|Add0~9\)) # (!\A[5]~input_o\ & ((!\A0|Add0~9\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datad => VCC,
	cin => \A0|Add0~9\,
	combout => \A0|Add0~10_combout\,
	cout => \A0|Add0~11\);

-- Location: LCCOMB_X14_Y26_N22
\A0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~12_combout\ = ((\B[6]~input_o\ $ (\A[6]~input_o\ $ (!\A0|Add0~11\)))) # (GND)
-- \A0|Add0~13\ = CARRY((\B[6]~input_o\ & ((\A[6]~input_o\) # (!\A0|Add0~11\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & !\A0|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datad => VCC,
	cin => \A0|Add0~11\,
	combout => \A0|Add0~12_combout\,
	cout => \A0|Add0~13\);

-- Location: LCCOMB_X14_Y26_N24
\A0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add0~14_combout\ = \A[7]~input_o\ $ (\A0|Add0~13\ $ (\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	cin => \A0|Add0~13\,
	combout => \A0|Add0~14_combout\);

-- Location: LCCOMB_X15_Y25_N12
\A0|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \A0|Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \A0|Add1~0_combout\,
	cout => \A0|Add1~1\);

-- Location: LCCOMB_X15_Y25_N14
\A0|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\A0|Add1~1\)) # (!\A[1]~input_o\ & ((\A0|Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\A0|Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\A0|Add1~1\))))
-- \A0|Add1~3\ = CARRY((\B[1]~input_o\ & ((!\A0|Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\A0|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \A0|Add1~1\,
	combout => \A0|Add1~2_combout\,
	cout => \A0|Add1~3\);

-- Location: LCCOMB_X15_Y25_N16
\A0|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\A0|Add1~3\)))) # (GND)
-- \A0|Add1~5\ = CARRY((\A[2]~input_o\ & ((!\A0|Add1~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\A0|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \A0|Add1~3\,
	combout => \A0|Add1~4_combout\,
	cout => \A0|Add1~5\);

-- Location: LCCOMB_X15_Y25_N18
\A0|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (!\A0|Add1~5\)) # (!\B[3]~input_o\ & (\A0|Add1~5\ & VCC)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & ((\A0|Add1~5\) # (GND))) # (!\B[3]~input_o\ & (!\A0|Add1~5\))))
-- \A0|Add1~7\ = CARRY((\A[3]~input_o\ & (\B[3]~input_o\ & !\A0|Add1~5\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (!\A0|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \A0|Add1~5\,
	combout => \A0|Add1~6_combout\,
	cout => \A0|Add1~7\);

-- Location: LCCOMB_X15_Y25_N20
\A0|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~8_combout\ = ((\A[4]~input_o\ $ (\B[4]~input_o\ $ (\A0|Add1~7\)))) # (GND)
-- \A0|Add1~9\ = CARRY((\A[4]~input_o\ & ((!\A0|Add1~7\) # (!\B[4]~input_o\))) # (!\A[4]~input_o\ & (!\B[4]~input_o\ & !\A0|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datad => VCC,
	cin => \A0|Add1~7\,
	combout => \A0|Add1~8_combout\,
	cout => \A0|Add1~9\);

-- Location: LCCOMB_X15_Y25_N22
\A0|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~10_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ & (!\A0|Add1~9\)) # (!\A[5]~input_o\ & ((\A0|Add1~9\) # (GND))))) # (!\B[5]~input_o\ & ((\A[5]~input_o\ & (\A0|Add1~9\ & VCC)) # (!\A[5]~input_o\ & (!\A0|Add1~9\))))
-- \A0|Add1~11\ = CARRY((\B[5]~input_o\ & ((!\A0|Add1~9\) # (!\A[5]~input_o\))) # (!\B[5]~input_o\ & (!\A[5]~input_o\ & !\A0|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[5]~input_o\,
	datad => VCC,
	cin => \A0|Add1~9\,
	combout => \A0|Add1~10_combout\,
	cout => \A0|Add1~11\);

-- Location: LCCOMB_X15_Y25_N24
\A0|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~12_combout\ = ((\A[6]~input_o\ $ (\B[6]~input_o\ $ (\A0|Add1~11\)))) # (GND)
-- \A0|Add1~13\ = CARRY((\A[6]~input_o\ & ((!\A0|Add1~11\) # (!\B[6]~input_o\))) # (!\A[6]~input_o\ & (!\B[6]~input_o\ & !\A0|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datad => VCC,
	cin => \A0|Add1~11\,
	combout => \A0|Add1~12_combout\,
	cout => \A0|Add1~13\);

-- Location: LCCOMB_X15_Y25_N26
\A0|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|Add1~14_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (!\A0|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	cin => \A0|Add1~13\,
	combout => \A0|Add1~14_combout\);

-- Location: LCCOMB_X15_Y26_N10
\A0|NZVC[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[1]~0_combout\ = (\ALU_Sel[1]~input_o\ & ((\A0|Add1~14_combout\))) # (!\ALU_Sel[1]~input_o\ & (\A0|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|Add0~14_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \A0|Add1~14_combout\,
	combout => \A0|NZVC[1]~0_combout\);

-- Location: LCCOMB_X15_Y26_N4
\A0|NZVC[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[1]~1_combout\ = (\A[7]~input_o\ & (!\A0|NZVC[1]~0_combout\ & (\ALU_Sel[1]~input_o\ $ (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\A0|NZVC[1]~0_combout\ & (\ALU_Sel[1]~input_o\ $ (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ALU_Sel[1]~input_o\,
	datac => \B[7]~input_o\,
	datad => \A0|NZVC[1]~0_combout\,
	combout => \A0|NZVC[1]~1_combout\);

-- Location: LCCOMB_X14_Y26_N26
\A0|NZVC[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC\(1) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|NZVC[1]~1_combout\)) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|NZVC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|NZVC[1]~1_combout\,
	datac => \A0|NZVC\(1),
	datad => \A0|Equal0~1clkctrl_outclk\,
	combout => \A0|NZVC\(1));

-- Location: LCCOMB_X15_Y25_N30
\A0|NZVC[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[2]~5_combout\ = (\ALU_Sel[1]~input_o\ & (!\A0|Add1~2_combout\ & (!\A0|Add1~14_combout\ & !\A0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Sel[1]~input_o\,
	datab => \A0|Add1~2_combout\,
	datac => \A0|Add1~14_combout\,
	datad => \A0|Add1~0_combout\,
	combout => \A0|NZVC[2]~5_combout\);

-- Location: LCCOMB_X14_Y26_N6
\A0|NZVC[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[2]~3_combout\ = (!\A0|Add0~6_combout\ & (!\A0|Add0~10_combout\ & (!\A0|Add0~4_combout\ & !\A0|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0~6_combout\,
	datab => \A0|Add0~10_combout\,
	datac => \A0|Add0~4_combout\,
	datad => \A0|Add0~8_combout\,
	combout => \A0|NZVC[2]~3_combout\);

-- Location: LCCOMB_X14_Y26_N28
\A0|NZVC[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[2]~2_combout\ = (!\A0|Add0~0_combout\ & (!\A0|Add0~14_combout\ & (!\ALU_Sel[1]~input_o\ & !\A0|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0~0_combout\,
	datab => \A0|Add0~14_combout\,
	datac => \ALU_Sel[1]~input_o\,
	datad => \A0|Add0~2_combout\,
	combout => \A0|NZVC[2]~2_combout\);

-- Location: LCCOMB_X14_Y26_N8
\A0|NZVC[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[2]~4_combout\ = (\A0|NZVC[2]~3_combout\ & (!\A0|Add0~12_combout\ & \A0|NZVC[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|NZVC[2]~3_combout\,
	datac => \A0|Add0~12_combout\,
	datad => \A0|NZVC[2]~2_combout\,
	combout => \A0|NZVC[2]~4_combout\);

-- Location: LCCOMB_X15_Y25_N28
\A0|NZVC[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[2]~6_combout\ = (!\A0|Add1~6_combout\ & (!\A0|Add1~8_combout\ & (!\A0|Add1~10_combout\ & !\A0|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add1~6_combout\,
	datab => \A0|Add1~8_combout\,
	datac => \A0|Add1~10_combout\,
	datad => \A0|Add1~4_combout\,
	combout => \A0|NZVC[2]~6_combout\);

-- Location: LCCOMB_X15_Y25_N2
\A0|NZVC[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC[2]~7_combout\ = (\A0|NZVC[2]~4_combout\) # ((\A0|NZVC[2]~5_combout\ & (!\A0|Add1~12_combout\ & \A0|NZVC[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|NZVC[2]~5_combout\,
	datab => \A0|Add1~12_combout\,
	datac => \A0|NZVC[2]~4_combout\,
	datad => \A0|NZVC[2]~6_combout\,
	combout => \A0|NZVC[2]~7_combout\);

-- Location: LCCOMB_X8_Y21_N12
\A0|NZVC[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC\(2) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|NZVC[2]~7_combout\))) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|NZVC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|NZVC\(2),
	datab => \A0|NZVC[2]~7_combout\,
	datad => \A0|Equal0~1clkctrl_outclk\,
	combout => \A0|NZVC\(2));

-- Location: LCCOMB_X16_Y26_N30
\A0|NZVC[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|NZVC\(3) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|Add0|auto_generated|result_int[8]~16_combout\))) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|NZVC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|NZVC\(3),
	datac => \A0|Equal0~1clkctrl_outclk\,
	datad => \A0|Add0|auto_generated|result_int[8]~16_combout\,
	combout => \A0|NZVC\(3));

-- Location: LCCOMB_X17_Y26_N30
\A0|result[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|result\(4) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|Add0|auto_generated|result_int[5]~10_combout\))) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|result\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(4),
	datac => \A0|Equal0~1clkctrl_outclk\,
	datad => \A0|Add0|auto_generated|result_int[5]~10_combout\,
	combout => \A0|result\(4));

-- Location: LCCOMB_X17_Y26_N24
\A0|result[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|result\(5) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|Add0|auto_generated|result_int[6]~12_combout\))) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|result\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|result\(5),
	datac => \A0|Add0|auto_generated|result_int[6]~12_combout\,
	datad => \A0|Equal0~1clkctrl_outclk\,
	combout => \A0|result\(5));

-- Location: LCCOMB_X17_Y26_N8
\A0|result[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|result\(6) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|Add0|auto_generated|result_int[7]~14_combout\))) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|result\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|result\(6),
	datac => \A0|Equal0~1clkctrl_outclk\,
	datad => \A0|Add0|auto_generated|result_int[7]~14_combout\,
	combout => \A0|result\(6));

-- Location: LCCOMB_X20_Y26_N28
\A1|F[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|F[0]~0_combout\ = (\A0|result\(4) & ((\A0|result\(5) & (\A0|NZVC\(3) & !\A0|result\(6))) # (!\A0|result\(5) & (\A0|NZVC\(3) $ (!\A0|result\(6)))))) # (!\A0|result\(4) & (((!\A0|NZVC\(3) & \A0|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(4),
	datab => \A0|result\(5),
	datac => \A0|NZVC\(3),
	datad => \A0|result\(6),
	combout => \A1|F[0]~0_combout\);

-- Location: LCCOMB_X20_Y26_N26
\A1|F[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|F[1]~1_combout\ = (\A0|result\(5) & ((\A0|result\(4) & (\A0|NZVC\(3))) # (!\A0|result\(4) & ((\A0|result\(6)))))) # (!\A0|result\(5) & (\A0|result\(6) & (\A0|result\(4) $ (\A0|NZVC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(4),
	datab => \A0|result\(5),
	datac => \A0|NZVC\(3),
	datad => \A0|result\(6),
	combout => \A1|F[1]~1_combout\);

-- Location: LCCOMB_X17_Y26_N20
\A1|F[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|F[2]~2_combout\ = (\A0|result\(6) & (\A0|NZVC\(3) & ((\A0|result\(5)) # (!\A0|result\(4))))) # (!\A0|result\(6) & (\A0|result\(5) & (!\A0|result\(4) & !\A0|NZVC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(5),
	datab => \A0|result\(4),
	datac => \A0|result\(6),
	datad => \A0|NZVC\(3),
	combout => \A1|F[2]~2_combout\);

-- Location: LCCOMB_X20_Y26_N20
\A1|F[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|F[3]~3_combout\ = (\A0|result\(4) & (\A0|result\(5) $ (((!\A0|result\(6)))))) # (!\A0|result\(4) & ((\A0|result\(5) & (\A0|NZVC\(3) & !\A0|result\(6))) # (!\A0|result\(5) & (!\A0|NZVC\(3) & \A0|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(4),
	datab => \A0|result\(5),
	datac => \A0|NZVC\(3),
	datad => \A0|result\(6),
	combout => \A1|F[3]~3_combout\);

-- Location: LCCOMB_X20_Y26_N22
\A1|F[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|F[4]~4_combout\ = (\A0|result\(5) & (\A0|result\(4) & (!\A0|NZVC\(3)))) # (!\A0|result\(5) & ((\A0|result\(6) & ((!\A0|NZVC\(3)))) # (!\A0|result\(6) & (\A0|result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(4),
	datab => \A0|result\(5),
	datac => \A0|NZVC\(3),
	datad => \A0|result\(6),
	combout => \A1|F[4]~4_combout\);

-- Location: LCCOMB_X17_Y26_N14
\A1|F[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|F[5]~5_combout\ = (\A0|result\(5) & (!\A0|NZVC\(3) & ((\A0|result\(4)) # (!\A0|result\(6))))) # (!\A0|result\(5) & (\A0|result\(4) & (\A0|result\(6) $ (!\A0|NZVC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(5),
	datab => \A0|result\(4),
	datac => \A0|result\(6),
	datad => \A0|NZVC\(3),
	combout => \A1|F[5]~5_combout\);

-- Location: LCCOMB_X20_Y26_N8
\A1|F[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A1|F[6]~6_combout\ = (\A0|result\(4) & (!\A0|NZVC\(3) & (\A0|result\(5) $ (!\A0|result\(6))))) # (!\A0|result\(4) & (!\A0|result\(5) & (\A0|NZVC\(3) $ (!\A0|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(4),
	datab => \A0|result\(5),
	datac => \A0|NZVC\(3),
	datad => \A0|result\(6),
	combout => \A1|F[6]~6_combout\);

-- Location: LCCOMB_X17_Y26_N22
\A0|result[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|result\(2) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|Add0|auto_generated|result_int[3]~6_combout\)) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|result\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0|auto_generated|result_int[3]~6_combout\,
	datac => \A0|result\(2),
	datad => \A0|Equal0~1clkctrl_outclk\,
	combout => \A0|result\(2));

-- Location: LCCOMB_X17_Y26_N4
\A0|result[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|result\(3) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|Add0|auto_generated|result_int[4]~8_combout\)) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0|auto_generated|result_int[4]~8_combout\,
	datac => \A0|result\(3),
	datad => \A0|Equal0~1clkctrl_outclk\,
	combout => \A0|result\(3));

-- Location: LCCOMB_X17_Y26_N26
\A0|result[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|result\(0) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|Add0|auto_generated|result_int[1]~2_combout\)) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|Add0|auto_generated|result_int[1]~2_combout\,
	datac => \A0|result\(0),
	datad => \A0|Equal0~1clkctrl_outclk\,
	combout => \A0|result\(0));

-- Location: LCCOMB_X17_Y26_N28
\A0|result[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A0|result\(1) = (GLOBAL(\A0|Equal0~1clkctrl_outclk\) & (\A0|Add0|auto_generated|result_int[2]~4_combout\)) # (!GLOBAL(\A0|Equal0~1clkctrl_outclk\) & ((\A0|result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|Add0|auto_generated|result_int[2]~4_combout\,
	datac => \A0|result\(1),
	datad => \A0|Equal0~1clkctrl_outclk\,
	combout => \A0|result\(1));

-- Location: LCCOMB_X20_Y26_N6
\A2|F[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[0]~0_combout\ = (\A0|result\(2) & ((\A0|result\(3) & (\A0|result\(0) & !\A0|result\(1))) # (!\A0|result\(3) & (!\A0|result\(0))))) # (!\A0|result\(2) & (\A0|result\(0) & (\A0|result\(3) $ (!\A0|result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(2),
	datab => \A0|result\(3),
	datac => \A0|result\(0),
	datad => \A0|result\(1),
	combout => \A2|F[0]~0_combout\);

-- Location: LCCOMB_X20_Y26_N4
\A2|F[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[1]~1_combout\ = (\A0|result\(3) & ((\A0|result\(0) & ((\A0|result\(1)))) # (!\A0|result\(0) & (\A0|result\(2))))) # (!\A0|result\(3) & (\A0|result\(2) & (\A0|result\(0) $ (\A0|result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(2),
	datab => \A0|result\(3),
	datac => \A0|result\(0),
	datad => \A0|result\(1),
	combout => \A2|F[1]~1_combout\);

-- Location: LCCOMB_X20_Y26_N2
\A2|F[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[2]~2_combout\ = (\A0|result\(2) & (\A0|result\(3) & ((\A0|result\(1)) # (!\A0|result\(0))))) # (!\A0|result\(2) & (!\A0|result\(3) & (!\A0|result\(0) & \A0|result\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(2),
	datab => \A0|result\(3),
	datac => \A0|result\(0),
	datad => \A0|result\(1),
	combout => \A2|F[2]~2_combout\);

-- Location: LCCOMB_X20_Y26_N24
\A2|F[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[3]~3_combout\ = (\A0|result\(0) & (\A0|result\(2) $ (((!\A0|result\(1)))))) # (!\A0|result\(0) & ((\A0|result\(2) & (!\A0|result\(3) & !\A0|result\(1))) # (!\A0|result\(2) & (\A0|result\(3) & \A0|result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(2),
	datab => \A0|result\(3),
	datac => \A0|result\(0),
	datad => \A0|result\(1),
	combout => \A2|F[3]~3_combout\);

-- Location: LCCOMB_X20_Y26_N10
\A2|F[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[4]~4_combout\ = (\A0|result\(1) & (((!\A0|result\(3) & \A0|result\(0))))) # (!\A0|result\(1) & ((\A0|result\(2) & (!\A0|result\(3))) # (!\A0|result\(2) & ((\A0|result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(2),
	datab => \A0|result\(3),
	datac => \A0|result\(0),
	datad => \A0|result\(1),
	combout => \A2|F[4]~4_combout\);

-- Location: LCCOMB_X20_Y26_N12
\A2|F[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[5]~5_combout\ = (\A0|result\(2) & (\A0|result\(0) & (\A0|result\(3) $ (\A0|result\(1))))) # (!\A0|result\(2) & (!\A0|result\(3) & ((\A0|result\(0)) # (\A0|result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(2),
	datab => \A0|result\(3),
	datac => \A0|result\(0),
	datad => \A0|result\(1),
	combout => \A2|F[5]~5_combout\);

-- Location: LCCOMB_X20_Y26_N18
\A2|F[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A2|F[6]~6_combout\ = (\A0|result\(0) & (!\A0|result\(3) & (\A0|result\(2) $ (!\A0|result\(1))))) # (!\A0|result\(0) & (!\A0|result\(1) & (\A0|result\(2) $ (!\A0|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|result\(2),
	datab => \A0|result\(3),
	datac => \A0|result\(0),
	datad => \A0|result\(1),
	combout => \A2|F[6]~6_combout\);

-- Location: LCCOMB_X15_Y26_N0
\A3|F[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[0]~0_combout\ = (\B[6]~input_o\ & ((\B[7]~input_o\ & (!\B[5]~input_o\ & \B[4]~input_o\)) # (!\B[7]~input_o\ & ((!\B[4]~input_o\))))) # (!\B[6]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ $ (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[4]~input_o\,
	combout => \A3|F[0]~0_combout\);

-- Location: LCCOMB_X15_Y26_N2
\A3|F[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[1]~1_combout\ = (\B[5]~input_o\ & ((\B[4]~input_o\ & ((\B[7]~input_o\))) # (!\B[4]~input_o\ & (\B[6]~input_o\)))) # (!\B[5]~input_o\ & (\B[6]~input_o\ & (\B[7]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[4]~input_o\,
	combout => \A3|F[1]~1_combout\);

-- Location: LCCOMB_X15_Y26_N24
\A3|F[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[2]~2_combout\ = (\B[6]~input_o\ & (((!\B[5]~input_o\ & \B[4]~input_o\)) # (!\B[7]~input_o\))) # (!\B[6]~input_o\ & (((\B[7]~input_o\) # (\B[4]~input_o\)) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[4]~input_o\,
	combout => \A3|F[2]~2_combout\);

-- Location: LCCOMB_X15_Y26_N6
\A3|F[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[3]~3_combout\ = (\B[4]~input_o\ & (\B[5]~input_o\ $ ((!\B[6]~input_o\)))) # (!\B[4]~input_o\ & ((\B[5]~input_o\ & (!\B[6]~input_o\ & \B[7]~input_o\)) # (!\B[5]~input_o\ & (\B[6]~input_o\ & !\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[4]~input_o\,
	combout => \A3|F[3]~3_combout\);

-- Location: LCCOMB_X15_Y26_N20
\A3|F[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[4]~4_combout\ = (\B[5]~input_o\ & (((!\B[7]~input_o\ & \B[4]~input_o\)))) # (!\B[5]~input_o\ & ((\B[6]~input_o\ & (!\B[7]~input_o\)) # (!\B[6]~input_o\ & ((\B[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[4]~input_o\,
	combout => \A3|F[4]~4_combout\);

-- Location: LCCOMB_X15_Y26_N26
\A3|F[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[5]~5_combout\ = (\B[5]~input_o\ & (!\B[7]~input_o\ & ((\B[4]~input_o\) # (!\B[6]~input_o\)))) # (!\B[5]~input_o\ & (\B[4]~input_o\ & (\B[6]~input_o\ $ (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[4]~input_o\,
	combout => \A3|F[5]~5_combout\);

-- Location: LCCOMB_X15_Y26_N28
\A3|F[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A3|F[6]~6_combout\ = (\B[4]~input_o\ & (!\B[7]~input_o\ & (\B[5]~input_o\ $ (!\B[6]~input_o\)))) # (!\B[4]~input_o\ & (!\B[5]~input_o\ & (\B[6]~input_o\ $ (!\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[6]~input_o\,
	datac => \B[7]~input_o\,
	datad => \B[4]~input_o\,
	combout => \A3|F[6]~6_combout\);

-- Location: LCCOMB_X15_Y25_N0
\A4|F[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|F[0]~0_combout\ = (\B[2]~input_o\ & ((\B[0]~input_o\ & (!\B[1]~input_o\ & \B[3]~input_o\)) # (!\B[0]~input_o\ & ((!\B[3]~input_o\))))) # (!\B[2]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \A4|F[0]~0_combout\);

-- Location: LCCOMB_X15_Y25_N6
\A4|F[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|F[1]~1_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\B[3]~input_o\))) # (!\B[0]~input_o\ & (\B[2]~input_o\)))) # (!\B[1]~input_o\ & (\B[2]~input_o\ & (\B[0]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \A4|F[1]~1_combout\);

-- Location: LCCOMB_X15_Y25_N8
\A4|F[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|F[2]~2_combout\ = (\B[2]~input_o\ & (((!\B[1]~input_o\ & \B[0]~input_o\)) # (!\B[3]~input_o\))) # (!\B[2]~input_o\ & (((\B[0]~input_o\) # (\B[3]~input_o\)) # (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \A4|F[2]~2_combout\);

-- Location: LCCOMB_X15_Y25_N10
\A4|F[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|F[3]~3_combout\ = (\B[0]~input_o\ & (\B[1]~input_o\ $ ((!\B[2]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (!\B[2]~input_o\ & \B[3]~input_o\)) # (!\B[1]~input_o\ & (\B[2]~input_o\ & !\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \A4|F[3]~3_combout\);

-- Location: LCCOMB_X14_Y26_N4
\A4|F[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|F[4]~4_combout\ = (\B[1]~input_o\ & (!\B[3]~input_o\ & (\B[0]~input_o\))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & (!\B[3]~input_o\)) # (!\B[2]~input_o\ & ((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \A4|F[4]~4_combout\);

-- Location: LCCOMB_X15_Y25_N4
\A4|F[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|F[5]~5_combout\ = (\B[1]~input_o\ & (!\B[3]~input_o\ & ((\B[0]~input_o\) # (!\B[2]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\B[2]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \A4|F[5]~5_combout\);

-- Location: LCCOMB_X14_Y26_N30
\A4|F[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|F[6]~6_combout\ = (\B[0]~input_o\ & (!\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\B[3]~input_o\ $ (!\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \A4|F[6]~6_combout\);

ww_NZVC(0) <= \NZVC[0]~output_o\;

ww_NZVC(1) <= \NZVC[1]~output_o\;

ww_NZVC(2) <= \NZVC[2]~output_o\;

ww_NZVC(3) <= \NZVC[3]~output_o\;

ww_display_result1(0) <= \display_result1[0]~output_o\;

ww_display_result1(1) <= \display_result1[1]~output_o\;

ww_display_result1(2) <= \display_result1[2]~output_o\;

ww_display_result1(3) <= \display_result1[3]~output_o\;

ww_display_result1(4) <= \display_result1[4]~output_o\;

ww_display_result1(5) <= \display_result1[5]~output_o\;

ww_display_result1(6) <= \display_result1[6]~output_o\;

ww_display_result2(0) <= \display_result2[0]~output_o\;

ww_display_result2(1) <= \display_result2[1]~output_o\;

ww_display_result2(2) <= \display_result2[2]~output_o\;

ww_display_result2(3) <= \display_result2[3]~output_o\;

ww_display_result2(4) <= \display_result2[4]~output_o\;

ww_display_result2(5) <= \display_result2[5]~output_o\;

ww_display_result2(6) <= \display_result2[6]~output_o\;

ww_display_b1(0) <= \display_b1[0]~output_o\;

ww_display_b1(1) <= \display_b1[1]~output_o\;

ww_display_b1(2) <= \display_b1[2]~output_o\;

ww_display_b1(3) <= \display_b1[3]~output_o\;

ww_display_b1(4) <= \display_b1[4]~output_o\;

ww_display_b1(5) <= \display_b1[5]~output_o\;

ww_display_b1(6) <= \display_b1[6]~output_o\;

ww_display_b2(0) <= \display_b2[0]~output_o\;

ww_display_b2(1) <= \display_b2[1]~output_o\;

ww_display_b2(2) <= \display_b2[2]~output_o\;

ww_display_b2(3) <= \display_b2[3]~output_o\;

ww_display_b2(4) <= \display_b2[4]~output_o\;

ww_display_b2(5) <= \display_b2[5]~output_o\;

ww_display_b2(6) <= \display_b2[6]~output_o\;
END structure;


