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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Tue Jan 24 01:09:37 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY divisordos IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		q :  OUT  STD_LOGIC_VECTOR(25 TO 25)
	);
END divisordos;

ARCHITECTURE bdf_type OF divisordos IS 

COMPONENT lpm_counter0
	PORT(clock : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	q_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(25 DOWNTO 0);


BEGIN 



b2v_inst : lpm_counter0
PORT MAP(clock => Clock,
		 q => q_ALTERA_SYNTHESIZED);

q(25) <= q_ALTERA_SYNTHESIZED(25);

END bdf_type;