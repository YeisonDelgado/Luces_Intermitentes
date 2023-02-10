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

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Tue Feb 07 11:08:13 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Luces_Intermitentes IS 
	PORT
	(
		SD :  IN  STD_LOGIC;
		SL :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		LD :  OUT  STD_LOGIC;
		LI :  OUT  STD_LOGIC
	);
END Luces_Intermitentes;

ARCHITECTURE bdf_type OF Luces_Intermitentes IS 

SIGNAL	DFF_inst :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	DFF_inst1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 
LD <= DFF_inst;
LI <= DFF_inst1;
SYNTHESIZED_WIRE_0 <= '1';
SYNTHESIZED_WIRE_1 <= '1';



PROCESS(CLK,SL,SYNTHESIZED_WIRE_0)
BEGIN
IF (SL = '0') THEN
	DFF_inst <= '0';
ELSIF (SYNTHESIZED_WIRE_0 = '0') THEN
	DFF_inst <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst <= DFF_inst;
END IF;
END PROCESS;


PROCESS(CLK,SD,SYNTHESIZED_WIRE_1)
BEGIN
IF (SD = '0') THEN
	DFF_inst1 <= '0';
ELSIF (SYNTHESIZED_WIRE_1 = '0') THEN
	DFF_inst1 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst1 <= DFF_inst1;
END IF;
END PROCESS;




END bdf_type;