-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/01/2018 20:17:51"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	rx : IN std_logic;
	tx : BUFFER std_logic;
	rx_full : BUFFER std_logic;
	tx_full : BUFFER std_logic;
	rx_empty : BUFFER std_logic;
	r_data : BUFFER std_logic_vector(7 DOWNTO 0);
	rx1 : BUFFER std_logic;
	tx1 : BUFFER std_logic
	);
END uart;

-- Design Ports Information
-- tx	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_full	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_full	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_empty	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[4]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[6]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data[7]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx1	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_rx_full : std_logic;
SIGNAL ww_tx_full : std_logic;
SIGNAL ww_rx_empty : std_logic;
SIGNAL ww_r_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx1 : std_logic;
SIGNAL ww_tx1 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \rx_full~output_o\ : std_logic;
SIGNAL \tx_full~output_o\ : std_logic;
SIGNAL \rx_empty~output_o\ : std_logic;
SIGNAL \r_data[0]~output_o\ : std_logic;
SIGNAL \r_data[1]~output_o\ : std_logic;
SIGNAL \r_data[2]~output_o\ : std_logic;
SIGNAL \r_data[3]~output_o\ : std_logic;
SIGNAL \r_data[4]~output_o\ : std_logic;
SIGNAL \r_data[5]~output_o\ : std_logic;
SIGNAL \r_data[6]~output_o\ : std_logic;
SIGNAL \r_data[7]~output_o\ : std_logic;
SIGNAL \rx1~output_o\ : std_logic;
SIGNAL \tx1~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \m_mod_map|Add0~0_combout\ : std_logic;
SIGNAL \m_mod_map|num_next[0]~3_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \m_mod_map|Add0~1\ : std_logic;
SIGNAL \m_mod_map|Add0~3\ : std_logic;
SIGNAL \m_mod_map|Add0~4_combout\ : std_logic;
SIGNAL \m_mod_map|Add0~5\ : std_logic;
SIGNAL \m_mod_map|Add0~6_combout\ : std_logic;
SIGNAL \m_mod_map|num_next[3]~1_combout\ : std_logic;
SIGNAL \m_mod_map|Add0~7\ : std_logic;
SIGNAL \m_mod_map|Add0~8_combout\ : std_logic;
SIGNAL \m_mod_map|num_next[4]~0_combout\ : std_logic;
SIGNAL \m_mod_map|Add0~9\ : std_logic;
SIGNAL \m_mod_map|Add0~10_combout\ : std_logic;
SIGNAL \m_mod_map|Add0~11\ : std_logic;
SIGNAL \m_mod_map|Add0~12_combout\ : std_logic;
SIGNAL \m_mod_map|Add0~13\ : std_logic;
SIGNAL \m_mod_map|Add0~14_combout\ : std_logic;
SIGNAL \m_mod_map|Equal0~0_combout\ : std_logic;
SIGNAL \m_mod_map|Add0~2_combout\ : std_logic;
SIGNAL \m_mod_map|num_next[1]~2_combout\ : std_logic;
SIGNAL \m_mod_map|Equal0~1_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \receiver_map|Selector3~4_combout\ : std_logic;
SIGNAL \receiver_map|d_reg[0]~0_combout\ : std_logic;
SIGNAL \receiver_map|n_reg[2]~0_combout\ : std_logic;
SIGNAL \receiver_map|n_reg[1]~2_combout\ : std_logic;
SIGNAL \receiver_map|Add1~0_combout\ : std_logic;
SIGNAL \receiver_map|n_reg[2]~1_combout\ : std_logic;
SIGNAL \receiver_map|Selector1~0_combout\ : std_logic;
SIGNAL \receiver_map|Selector1~1_combout\ : std_logic;
SIGNAL \receiver_map|state_reg.start~q\ : std_logic;
SIGNAL \receiver_map|Equal1~1_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[0]~3_combout\ : std_logic;
SIGNAL \m_mod_map|Equal0~3_combout\ : std_logic;
SIGNAL \m_mod_map|Equal0~2_combout\ : std_logic;
SIGNAL \m_mod_map|Equal0~4_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[0]~1_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[0]~0_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[0]~2_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[0]~4_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[3]~5_combout\ : std_logic;
SIGNAL \receiver_map|Selector3~1_combout\ : std_logic;
SIGNAL \receiver_map|Selector3~2_combout\ : std_logic;
SIGNAL \receiver_map|Selector2~0_combout\ : std_logic;
SIGNAL \receiver_map|state_reg.data~q\ : std_logic;
SIGNAL \receiver_map|n_reg[0]~3_combout\ : std_logic;
SIGNAL \receiver_map|Selector3~0_combout\ : std_logic;
SIGNAL \receiver_map|Selector3~3_combout\ : std_logic;
SIGNAL \receiver_map|state_reg.stop~q\ : std_logic;
SIGNAL \receiver_map|rx_done~0_combout\ : std_logic;
SIGNAL \receiver_map|Selector0~0_combout\ : std_logic;
SIGNAL \receiver_map|state_reg.idle~q\ : std_logic;
SIGNAL \receiver_map|s_reg[0]~8_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[1]~7_combout\ : std_logic;
SIGNAL \receiver_map|Add0~0_combout\ : std_logic;
SIGNAL \receiver_map|s_reg[2]~6_combout\ : std_logic;
SIGNAL \receiver_map|Equal1~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|wr_ptr_reg[0]~1_combout\ : std_logic;
SIGNAL \transmiter_map|Selector8~3_combout\ : std_logic;
SIGNAL \transmiter_map|Selector8~4_combout\ : std_logic;
SIGNAL \transmiter_map|n_reg[0]~0_combout\ : std_logic;
SIGNAL \transmiter_map|n_reg[0]~3_combout\ : std_logic;
SIGNAL \transmiter_map|n_reg[1]~2_combout\ : std_logic;
SIGNAL \transmiter_map|Add1~0_combout\ : std_logic;
SIGNAL \transmiter_map|n_reg[2]~1_combout\ : std_logic;
SIGNAL \transmiter_map|Selector8~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector6~1_combout\ : std_logic;
SIGNAL \transmiter_map|Selector6~2_combout\ : std_logic;
SIGNAL \transmiter_map|state_reg.start~q\ : std_logic;
SIGNAL \transmiter_map|s_reg[0]~3_combout\ : std_logic;
SIGNAL \transmiter_map|s_reg[0]~8_combout\ : std_logic;
SIGNAL \transmiter_map|s_reg[0]~4_combout\ : std_logic;
SIGNAL \transmiter_map|s_reg[1]~7_combout\ : std_logic;
SIGNAL \transmiter_map|Add0~0_combout\ : std_logic;
SIGNAL \transmiter_map|s_reg[2]~6_combout\ : std_logic;
SIGNAL \transmiter_map|Equal2~0_combout\ : std_logic;
SIGNAL \transmiter_map|data_next~0_combout\ : std_logic;
SIGNAL \transmiter_map|Selector6~0_combout\ : std_logic;
SIGNAL \transmiter_map|Selector8~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector8~5_combout\ : std_logic;
SIGNAL \transmiter_map|state_reg.stop~q\ : std_logic;
SIGNAL \transmiter_map|tx_done~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector7~0_combout\ : std_logic;
SIGNAL \transmiter_map|state_reg.data~q\ : std_logic;
SIGNAL \transmiter_map|s_reg[3]~1_combout\ : std_logic;
SIGNAL \transmiter_map|s_reg[3]~2_combout\ : std_logic;
SIGNAL \transmiter_map|s_reg[3]~5_combout\ : std_logic;
SIGNAL \transmiter_map|s_reg[3]~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add0~4_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|rd_ptr_reg[0]~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add1~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux13~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|wr_ptr_reg[2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add0~2_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add1~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add1~4_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add1~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add1~2_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add0~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add0~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|wr_ptr_reg[4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Add0~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux13~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux13~2_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux13~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux13~4_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|full_reg~q\ : std_logic;
SIGNAL \fifo_transmiter_map|transmission1~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|transmission1~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux14~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux14~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux14~2_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux14~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|empty_reg~q\ : std_logic;
SIGNAL \transmiter_map|Selector5~0_combout\ : std_logic;
SIGNAL \transmiter_map|state_reg.idle~q\ : std_logic;
SIGNAL \receiver_map|d_reg[1]~feeder_combout\ : std_logic;
SIGNAL \receiver_map|d_reg[2]~feeder_combout\ : std_logic;
SIGNAL \receiver_map|d_reg[3]~feeder_combout\ : std_logic;
SIGNAL \receiver_map|d_reg[4]~feeder_combout\ : std_logic;
SIGNAL \receiver_map|d_reg[5]~feeder_combout\ : std_logic;
SIGNAL \receiver_map|d_reg[6]~feeder_combout\ : std_logic;
SIGNAL \receiver_map|d_reg[7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~19_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~23_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~20_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~21_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~22_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~7_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~2_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~5_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~4_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~0_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~6_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~7_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~11_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~9_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~10_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~12_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~13_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~14_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~17_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~15_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~16_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~4_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~5_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~9_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~26_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~25_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~10_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~27_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~24_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~11_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~36_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~39_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~37_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~38_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~17_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~32_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~35_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~34_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~33_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~14_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~15_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~28_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~31_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~30_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][7]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Decoder0~29_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][7]~q\ : std_logic;
SIGNAL \transmiter_map|Selector9~12_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~13_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~16_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~19_combout\ : std_logic;
SIGNAL \transmiter_map|Selector9~20_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~17_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~14_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~15_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~12_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~13_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~16_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~10_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~11_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~19_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~7_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~4_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~5_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][6]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][6]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][6]~q\ : std_logic;
SIGNAL \transmiter_map|Selector10~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~3_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~9_combout\ : std_logic;
SIGNAL \transmiter_map|Selector10~20_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~0_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~7_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~4_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~5_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~9_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~12_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~13_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~14_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~15_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~16_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~17_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][5]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][5]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][5]~q\ : std_logic;
SIGNAL \transmiter_map|Selector11~10_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~11_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~19_combout\ : std_logic;
SIGNAL \transmiter_map|Selector11~20_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~0_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~7_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~4_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~5_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~3_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~9_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~10_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~11_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~14_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~15_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~12_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~13_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~16_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][4]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][4]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][4]~q\ : std_logic;
SIGNAL \transmiter_map|Selector12~17_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~18_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~19_combout\ : std_logic;
SIGNAL \transmiter_map|Selector12~20_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~0_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~7_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~4_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~5_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~3_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~9_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~17_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~14_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~15_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~12_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~13_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~16_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][3]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][3]~q\ : std_logic;
SIGNAL \transmiter_map|Selector13~10_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~11_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~19_combout\ : std_logic;
SIGNAL \transmiter_map|Selector13~20_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~10_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~11_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~17_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~12_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~13_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~14_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~15_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~16_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~19_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~0_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~7_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~4_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~5_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][2]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][2]~q\ : std_logic;
SIGNAL \transmiter_map|Selector14~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~3_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~9_combout\ : std_logic;
SIGNAL \transmiter_map|Selector14~20_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~7_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~2_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~4_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~5_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~6_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~9_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~17_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~14_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~15_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~12_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~13_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~16_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][1]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][1]~q\ : std_logic;
SIGNAL \transmiter_map|Selector15~10_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~11_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~19_combout\ : std_logic;
SIGNAL \transmiter_map|Selector15~20_combout\ : std_logic;
SIGNAL \transmiter_map|data_reg[0]~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[12][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[14][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[8][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[10][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~10_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~11_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[13][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[15][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[11][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[9][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~17_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~18_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[3][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[7][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[5][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[1][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~12_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~13_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[4][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[6][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[2][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[0][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~14_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~15_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~16_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~19_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[27][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[19][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[18][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[26][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~0_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~1_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[30][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[31][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[23][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[22][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~7_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~8_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[28][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[29][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[21][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[20][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~2_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~3_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[17][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[25][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][0]~feeder_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[24][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|array_reg[16][0]~q\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~4_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~5_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~6_combout\ : std_logic;
SIGNAL \fifo_transmiter_map|Mux7~9_combout\ : std_logic;
SIGNAL \transmiter_map|data_reg[0]~2_combout\ : std_logic;
SIGNAL \transmiter_map|data_reg[0]~4_combout\ : std_logic;
SIGNAL \transmiter_map|data_reg[7]~5_combout\ : std_logic;
SIGNAL \transmiter_map|Selector0~0_combout\ : std_logic;
SIGNAL \transmiter_map|tx_reg~q\ : std_logic;
SIGNAL \receiver_map|n_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \transmiter_map|n_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \transmiter_map|s_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fifo_transmiter_map|wr_ptr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \m_mod_map|num_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fifo_transmiter_map|rd_ptr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \receiver_map|s_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \receiver_map|d_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \transmiter_map|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \transmiter_map|ALT_INV_tx_reg~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_rx <= rx;
tx <= ww_tx;
rx_full <= ww_rx_full;
tx_full <= ww_tx_full;
rx_empty <= ww_rx_empty;
r_data <= ww_r_data;
rx1 <= ww_rx1;
tx1 <= ww_tx1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\transmiter_map|ALT_INV_tx_reg~q\ <= NOT \transmiter_map|tx_reg~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y0_N16
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmiter_map|ALT_INV_tx_reg~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\rx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~input_o\,
	devoe => ww_devoe,
	o => \rx_full~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\tx_full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fifo_transmiter_map|full_reg~q\,
	devoe => ww_devoe,
	o => \tx_full~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\rx_empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_reset~input_o\,
	devoe => ww_devoe,
	o => \rx_empty~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\r_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(0),
	devoe => ww_devoe,
	o => \r_data[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\r_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(1),
	devoe => ww_devoe,
	o => \r_data[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\r_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(2),
	devoe => ww_devoe,
	o => \r_data[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\r_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(3),
	devoe => ww_devoe,
	o => \r_data[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\r_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(4),
	devoe => ww_devoe,
	o => \r_data[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\r_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(5),
	devoe => ww_devoe,
	o => \r_data[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\r_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(6),
	devoe => ww_devoe,
	o => \r_data[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\r_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \receiver_map|d_reg\(7),
	devoe => ww_devoe,
	o => \r_data[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\rx1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx~input_o\,
	devoe => ww_devoe,
	o => \rx1~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\tx1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmiter_map|ALT_INV_tx_reg~q\,
	devoe => ww_devoe,
	o => \tx1~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y7_N12
\m_mod_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~0_combout\ = \m_mod_map|num_reg\(0) $ (VCC)
-- \m_mod_map|Add0~1\ = CARRY(\m_mod_map|num_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_mod_map|num_reg\(0),
	datad => VCC,
	combout => \m_mod_map|Add0~0_combout\,
	cout => \m_mod_map|Add0~1\);

-- Location: LCCOMB_X24_Y7_N0
\m_mod_map|num_next[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|num_next[0]~3_combout\ = (\m_mod_map|Add0~0_combout\ & ((!\m_mod_map|Equal0~1_combout\) # (!\m_mod_map|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_mod_map|Equal0~0_combout\,
	datac => \m_mod_map|Add0~0_combout\,
	datad => \m_mod_map|Equal0~1_combout\,
	combout => \m_mod_map|num_next[0]~3_combout\);

-- Location: IOIBUF_X34_Y12_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G9
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X24_Y7_N1
\m_mod_map|num_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_mod_map|num_next[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(0));

-- Location: LCCOMB_X24_Y7_N14
\m_mod_map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~2_combout\ = (\m_mod_map|num_reg\(1) & (!\m_mod_map|Add0~1\)) # (!\m_mod_map|num_reg\(1) & ((\m_mod_map|Add0~1\) # (GND)))
-- \m_mod_map|Add0~3\ = CARRY((!\m_mod_map|Add0~1\) # (!\m_mod_map|num_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_mod_map|num_reg\(1),
	datad => VCC,
	cin => \m_mod_map|Add0~1\,
	combout => \m_mod_map|Add0~2_combout\,
	cout => \m_mod_map|Add0~3\);

-- Location: LCCOMB_X24_Y7_N16
\m_mod_map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~4_combout\ = (\m_mod_map|num_reg\(2) & (\m_mod_map|Add0~3\ $ (GND))) # (!\m_mod_map|num_reg\(2) & (!\m_mod_map|Add0~3\ & VCC))
-- \m_mod_map|Add0~5\ = CARRY((\m_mod_map|num_reg\(2) & !\m_mod_map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_mod_map|num_reg\(2),
	datad => VCC,
	cin => \m_mod_map|Add0~3\,
	combout => \m_mod_map|Add0~4_combout\,
	cout => \m_mod_map|Add0~5\);

-- Location: FF_X24_Y7_N17
\m_mod_map|num_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_mod_map|Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(2));

-- Location: LCCOMB_X24_Y7_N18
\m_mod_map|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~6_combout\ = (\m_mod_map|num_reg\(3) & (!\m_mod_map|Add0~5\)) # (!\m_mod_map|num_reg\(3) & ((\m_mod_map|Add0~5\) # (GND)))
-- \m_mod_map|Add0~7\ = CARRY((!\m_mod_map|Add0~5\) # (!\m_mod_map|num_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|num_reg\(3),
	datad => VCC,
	cin => \m_mod_map|Add0~5\,
	combout => \m_mod_map|Add0~6_combout\,
	cout => \m_mod_map|Add0~7\);

-- Location: LCCOMB_X23_Y7_N4
\m_mod_map|num_next[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|num_next[3]~1_combout\ = (\m_mod_map|Add0~6_combout\ & ((!\m_mod_map|Equal0~0_combout\) # (!\m_mod_map|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|Equal0~1_combout\,
	datab => \m_mod_map|Equal0~0_combout\,
	datad => \m_mod_map|Add0~6_combout\,
	combout => \m_mod_map|num_next[3]~1_combout\);

-- Location: FF_X24_Y7_N5
\m_mod_map|num_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \m_mod_map|num_next[3]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(3));

-- Location: LCCOMB_X24_Y7_N20
\m_mod_map|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~8_combout\ = (\m_mod_map|num_reg\(4) & (\m_mod_map|Add0~7\ $ (GND))) # (!\m_mod_map|num_reg\(4) & (!\m_mod_map|Add0~7\ & VCC))
-- \m_mod_map|Add0~9\ = CARRY((\m_mod_map|num_reg\(4) & !\m_mod_map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|num_reg\(4),
	datad => VCC,
	cin => \m_mod_map|Add0~7\,
	combout => \m_mod_map|Add0~8_combout\,
	cout => \m_mod_map|Add0~9\);

-- Location: LCCOMB_X24_Y7_N8
\m_mod_map|num_next[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|num_next[4]~0_combout\ = (\m_mod_map|Add0~8_combout\ & ((!\m_mod_map|Equal0~1_combout\) # (!\m_mod_map|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_mod_map|Equal0~0_combout\,
	datac => \m_mod_map|Add0~8_combout\,
	datad => \m_mod_map|Equal0~1_combout\,
	combout => \m_mod_map|num_next[4]~0_combout\);

-- Location: FF_X24_Y7_N9
\m_mod_map|num_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_mod_map|num_next[4]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(4));

-- Location: LCCOMB_X24_Y7_N22
\m_mod_map|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~10_combout\ = (\m_mod_map|num_reg\(5) & (!\m_mod_map|Add0~9\)) # (!\m_mod_map|num_reg\(5) & ((\m_mod_map|Add0~9\) # (GND)))
-- \m_mod_map|Add0~11\ = CARRY((!\m_mod_map|Add0~9\) # (!\m_mod_map|num_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_mod_map|num_reg\(5),
	datad => VCC,
	cin => \m_mod_map|Add0~9\,
	combout => \m_mod_map|Add0~10_combout\,
	cout => \m_mod_map|Add0~11\);

-- Location: FF_X24_Y7_N23
\m_mod_map|num_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_mod_map|Add0~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(5));

-- Location: LCCOMB_X24_Y7_N24
\m_mod_map|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~12_combout\ = (\m_mod_map|num_reg\(6) & (\m_mod_map|Add0~11\ $ (GND))) # (!\m_mod_map|num_reg\(6) & (!\m_mod_map|Add0~11\ & VCC))
-- \m_mod_map|Add0~13\ = CARRY((\m_mod_map|num_reg\(6) & !\m_mod_map|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \m_mod_map|num_reg\(6),
	datad => VCC,
	cin => \m_mod_map|Add0~11\,
	combout => \m_mod_map|Add0~12_combout\,
	cout => \m_mod_map|Add0~13\);

-- Location: FF_X24_Y7_N25
\m_mod_map|num_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_mod_map|Add0~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(6));

-- Location: LCCOMB_X24_Y7_N26
\m_mod_map|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Add0~14_combout\ = \m_mod_map|Add0~13\ $ (\m_mod_map|num_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \m_mod_map|num_reg\(7),
	cin => \m_mod_map|Add0~13\,
	combout => \m_mod_map|Add0~14_combout\);

-- Location: FF_X24_Y7_N27
\m_mod_map|num_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_mod_map|Add0~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(7));

-- Location: LCCOMB_X24_Y7_N10
\m_mod_map|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Equal0~0_combout\ = (!\m_mod_map|num_reg\(5) & (!\m_mod_map|num_reg\(6) & (!\m_mod_map|num_reg\(7) & \m_mod_map|num_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|num_reg\(5),
	datab => \m_mod_map|num_reg\(6),
	datac => \m_mod_map|num_reg\(7),
	datad => \m_mod_map|num_reg\(4),
	combout => \m_mod_map|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y7_N30
\m_mod_map|num_next[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|num_next[1]~2_combout\ = (\m_mod_map|Add0~2_combout\ & ((!\m_mod_map|Equal0~0_combout\) # (!\m_mod_map|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|Equal0~1_combout\,
	datab => \m_mod_map|Equal0~0_combout\,
	datac => \m_mod_map|Add0~2_combout\,
	combout => \m_mod_map|num_next[1]~2_combout\);

-- Location: FF_X24_Y7_N31
\m_mod_map|num_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \m_mod_map|num_next[1]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mod_map|num_reg\(1));

-- Location: LCCOMB_X24_Y7_N6
\m_mod_map|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Equal0~1_combout\ = (\m_mod_map|num_reg\(1) & (!\m_mod_map|num_reg\(2) & (\m_mod_map|num_reg\(3) & !\m_mod_map|num_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|num_reg\(1),
	datab => \m_mod_map|num_reg\(2),
	datac => \m_mod_map|num_reg\(3),
	datad => \m_mod_map|num_reg\(0),
	combout => \m_mod_map|Equal0~1_combout\);

-- Location: IOIBUF_X21_Y0_N8
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X22_Y7_N6
\receiver_map|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector3~4_combout\ = (!\rx~input_o\ & !\receiver_map|state_reg.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datac => \receiver_map|state_reg.idle~q\,
	combout => \receiver_map|Selector3~4_combout\);

-- Location: LCCOMB_X22_Y7_N28
\receiver_map|d_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[0]~0_combout\ = (\receiver_map|state_reg.data~q\ & (\m_mod_map|Equal0~0_combout\ & (\receiver_map|Equal1~0_combout\ & \m_mod_map|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.data~q\,
	datab => \m_mod_map|Equal0~0_combout\,
	datac => \receiver_map|Equal1~0_combout\,
	datad => \m_mod_map|Equal0~1_combout\,
	combout => \receiver_map|d_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y7_N18
\receiver_map|n_reg[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|n_reg[2]~0_combout\ = (!\receiver_map|Selector3~1_combout\ & (((\receiver_map|n_reg\(2) & \receiver_map|Add1~0_combout\)) # (!\receiver_map|d_reg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|n_reg\(2),
	datab => \receiver_map|d_reg[0]~0_combout\,
	datac => \receiver_map|Add1~0_combout\,
	datad => \receiver_map|Selector3~1_combout\,
	combout => \receiver_map|n_reg[2]~0_combout\);

-- Location: LCCOMB_X22_Y7_N16
\receiver_map|n_reg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|n_reg[1]~2_combout\ = (\receiver_map|n_reg[2]~0_combout\ & (((\receiver_map|n_reg\(1))))) # (!\receiver_map|n_reg[2]~0_combout\ & (\receiver_map|state_reg.data~q\ & (\receiver_map|n_reg\(0) $ (\receiver_map|n_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.data~q\,
	datab => \receiver_map|n_reg\(0),
	datac => \receiver_map|n_reg\(1),
	datad => \receiver_map|n_reg[2]~0_combout\,
	combout => \receiver_map|n_reg[1]~2_combout\);

-- Location: FF_X22_Y7_N17
\receiver_map|n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|n_reg[1]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|n_reg\(1));

-- Location: LCCOMB_X22_Y7_N4
\receiver_map|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Add1~0_combout\ = (\receiver_map|n_reg\(0) & \receiver_map|n_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|n_reg\(0),
	datad => \receiver_map|n_reg\(1),
	combout => \receiver_map|Add1~0_combout\);

-- Location: LCCOMB_X22_Y7_N22
\receiver_map|n_reg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|n_reg[2]~1_combout\ = (\receiver_map|n_reg[2]~0_combout\ & (((\receiver_map|n_reg\(2))))) # (!\receiver_map|n_reg[2]~0_combout\ & (\receiver_map|state_reg.data~q\ & (\receiver_map|Add1~0_combout\ $ (\receiver_map|n_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.data~q\,
	datab => \receiver_map|Add1~0_combout\,
	datac => \receiver_map|n_reg\(2),
	datad => \receiver_map|n_reg[2]~0_combout\,
	combout => \receiver_map|n_reg[2]~1_combout\);

-- Location: FF_X22_Y7_N23
\receiver_map|n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|n_reg[2]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|n_reg\(2));

-- Location: LCCOMB_X22_Y7_N24
\receiver_map|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector1~0_combout\ = (!\receiver_map|Selector3~1_combout\ & (((!\receiver_map|Add1~0_combout\) # (!\receiver_map|d_reg[0]~0_combout\)) # (!\receiver_map|n_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|n_reg\(2),
	datab => \receiver_map|d_reg[0]~0_combout\,
	datac => \receiver_map|Add1~0_combout\,
	datad => \receiver_map|Selector3~1_combout\,
	combout => \receiver_map|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y7_N0
\receiver_map|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector1~1_combout\ = (!\receiver_map|rx_done~0_combout\ & (\receiver_map|Selector1~0_combout\ & ((\receiver_map|Selector3~4_combout\) # (\receiver_map|state_reg.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|Selector3~4_combout\,
	datab => \receiver_map|rx_done~0_combout\,
	datac => \receiver_map|state_reg.start~q\,
	datad => \receiver_map|Selector1~0_combout\,
	combout => \receiver_map|Selector1~1_combout\);

-- Location: FF_X22_Y7_N1
\receiver_map|state_reg.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|state_reg.start~q\);

-- Location: LCCOMB_X23_Y8_N22
\receiver_map|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Equal1~1_combout\ = (\receiver_map|s_reg\(1) & (\receiver_map|s_reg\(0) & \receiver_map|s_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|s_reg\(1),
	datac => \receiver_map|s_reg\(0),
	datad => \receiver_map|s_reg\(2),
	combout => \receiver_map|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y8_N14
\receiver_map|s_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[0]~3_combout\ = ((\receiver_map|state_reg.data~q\ & ((!\receiver_map|s_reg\(3)))) # (!\receiver_map|state_reg.data~q\ & ((\receiver_map|s_reg\(3)) # (!\receiver_map|state_reg.start~q\)))) # (!\receiver_map|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.start~q\,
	datab => \receiver_map|state_reg.data~q\,
	datac => \receiver_map|Equal1~1_combout\,
	datad => \receiver_map|s_reg\(3),
	combout => \receiver_map|s_reg[0]~3_combout\);

-- Location: LCCOMB_X24_Y7_N4
\m_mod_map|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Equal0~3_combout\ = (\m_mod_map|num_reg\(3) & !\m_mod_map|num_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_mod_map|num_reg\(3),
	datad => \m_mod_map|num_reg\(2),
	combout => \m_mod_map|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y7_N28
\m_mod_map|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Equal0~2_combout\ = (!\m_mod_map|num_reg\(5) & (!\m_mod_map|num_reg\(6) & (\m_mod_map|num_reg\(4) & !\m_mod_map|num_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|num_reg\(5),
	datab => \m_mod_map|num_reg\(6),
	datac => \m_mod_map|num_reg\(4),
	datad => \m_mod_map|num_reg\(0),
	combout => \m_mod_map|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y7_N2
\m_mod_map|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m_mod_map|Equal0~4_combout\ = (!\m_mod_map|num_reg\(7) & (\m_mod_map|num_reg\(1) & (\m_mod_map|Equal0~3_combout\ & \m_mod_map|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|num_reg\(7),
	datab => \m_mod_map|num_reg\(1),
	datac => \m_mod_map|Equal0~3_combout\,
	datad => \m_mod_map|Equal0~2_combout\,
	combout => \m_mod_map|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y8_N26
\receiver_map|s_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[0]~1_combout\ = (!\m_mod_map|Equal0~4_combout\ & ((\receiver_map|state_reg.stop~q\) # ((\receiver_map|state_reg.data~q\) # (\receiver_map|state_reg.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.stop~q\,
	datab => \receiver_map|state_reg.data~q\,
	datac => \receiver_map|state_reg.start~q\,
	datad => \m_mod_map|Equal0~4_combout\,
	combout => \receiver_map|s_reg[0]~1_combout\);

-- Location: LCCOMB_X23_Y8_N16
\receiver_map|s_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[0]~0_combout\ = (\rx~input_o\ & !\receiver_map|state_reg.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx~input_o\,
	datad => \receiver_map|state_reg.idle~q\,
	combout => \receiver_map|s_reg[0]~0_combout\);

-- Location: LCCOMB_X23_Y8_N0
\receiver_map|s_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[0]~2_combout\ = (\receiver_map|s_reg[0]~1_combout\) # ((\receiver_map|s_reg[0]~0_combout\) # ((\receiver_map|state_reg.stop~q\ & \receiver_map|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.stop~q\,
	datab => \receiver_map|Equal1~0_combout\,
	datac => \receiver_map|s_reg[0]~1_combout\,
	datad => \receiver_map|s_reg[0]~0_combout\,
	combout => \receiver_map|s_reg[0]~2_combout\);

-- Location: LCCOMB_X23_Y8_N24
\receiver_map|s_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[0]~4_combout\ = (\receiver_map|state_reg.idle~q\ & (\receiver_map|s_reg[0]~3_combout\ & !\receiver_map|s_reg[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \receiver_map|state_reg.idle~q\,
	datac => \receiver_map|s_reg[0]~3_combout\,
	datad => \receiver_map|s_reg[0]~2_combout\,
	combout => \receiver_map|s_reg[0]~4_combout\);

-- Location: LCCOMB_X23_Y8_N18
\receiver_map|s_reg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[3]~5_combout\ = (\receiver_map|s_reg\(3) & ((\receiver_map|s_reg[0]~2_combout\) # ((!\receiver_map|Equal1~1_combout\ & \receiver_map|s_reg[0]~4_combout\)))) # (!\receiver_map|s_reg\(3) & (\receiver_map|Equal1~1_combout\ & 
-- (\receiver_map|s_reg[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|Equal1~1_combout\,
	datab => \receiver_map|s_reg[0]~4_combout\,
	datac => \receiver_map|s_reg\(3),
	datad => \receiver_map|s_reg[0]~2_combout\,
	combout => \receiver_map|s_reg[3]~5_combout\);

-- Location: FF_X23_Y8_N19
\receiver_map|s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|s_reg[3]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|s_reg\(3));

-- Location: LCCOMB_X23_Y8_N8
\receiver_map|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector3~1_combout\ = (\receiver_map|state_reg.start~q\ & (!\receiver_map|s_reg\(3) & (\receiver_map|Equal1~1_combout\ & \m_mod_map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.start~q\,
	datab => \receiver_map|s_reg\(3),
	datac => \receiver_map|Equal1~1_combout\,
	datad => \m_mod_map|Equal0~4_combout\,
	combout => \receiver_map|Selector3~1_combout\);

-- Location: LCCOMB_X23_Y8_N6
\receiver_map|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector3~2_combout\ = (!\receiver_map|Selector3~0_combout\ & (!\receiver_map|Selector3~1_combout\ & ((\rx~input_o\) # (\receiver_map|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \receiver_map|Selector3~0_combout\,
	datac => \receiver_map|Selector3~1_combout\,
	datad => \receiver_map|state_reg.idle~q\,
	combout => \receiver_map|Selector3~2_combout\);

-- Location: LCCOMB_X23_Y8_N28
\receiver_map|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector2~0_combout\ = (!\receiver_map|rx_done~0_combout\ & ((\receiver_map|Selector3~2_combout\ & ((\receiver_map|state_reg.data~q\))) # (!\receiver_map|Selector3~2_combout\ & (\receiver_map|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|rx_done~0_combout\,
	datab => \receiver_map|Selector3~1_combout\,
	datac => \receiver_map|state_reg.data~q\,
	datad => \receiver_map|Selector3~2_combout\,
	combout => \receiver_map|Selector2~0_combout\);

-- Location: FF_X23_Y8_N29
\receiver_map|state_reg.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|state_reg.data~q\);

-- Location: LCCOMB_X22_Y7_N10
\receiver_map|n_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|n_reg[0]~3_combout\ = (\receiver_map|n_reg\(0) & ((\receiver_map|n_reg[2]~0_combout\))) # (!\receiver_map|n_reg\(0) & (\receiver_map|state_reg.data~q\ & !\receiver_map|n_reg[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.data~q\,
	datac => \receiver_map|n_reg\(0),
	datad => \receiver_map|n_reg[2]~0_combout\,
	combout => \receiver_map|n_reg[0]~3_combout\);

-- Location: FF_X22_Y7_N11
\receiver_map|n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|n_reg[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|n_reg\(0));

-- Location: LCCOMB_X22_Y7_N20
\receiver_map|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector3~0_combout\ = (\receiver_map|n_reg\(0) & (\receiver_map|n_reg\(1) & (\receiver_map|n_reg\(2) & \receiver_map|d_reg[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|n_reg\(0),
	datab => \receiver_map|n_reg\(1),
	datac => \receiver_map|n_reg\(2),
	datad => \receiver_map|d_reg[0]~0_combout\,
	combout => \receiver_map|Selector3~0_combout\);

-- Location: LCCOMB_X23_Y8_N20
\receiver_map|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector3~3_combout\ = (!\receiver_map|rx_done~0_combout\ & ((\receiver_map|Selector3~2_combout\ & ((\receiver_map|state_reg.stop~q\))) # (!\receiver_map|Selector3~2_combout\ & (\receiver_map|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|rx_done~0_combout\,
	datab => \receiver_map|Selector3~0_combout\,
	datac => \receiver_map|state_reg.stop~q\,
	datad => \receiver_map|Selector3~2_combout\,
	combout => \receiver_map|Selector3~3_combout\);

-- Location: FF_X23_Y8_N21
\receiver_map|state_reg.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|Selector3~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|state_reg.stop~q\);

-- Location: LCCOMB_X22_Y7_N14
\receiver_map|rx_done~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|rx_done~0_combout\ = (\m_mod_map|Equal0~1_combout\ & (\m_mod_map|Equal0~0_combout\ & (\receiver_map|Equal1~0_combout\ & \receiver_map|state_reg.stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|Equal0~1_combout\,
	datab => \m_mod_map|Equal0~0_combout\,
	datac => \receiver_map|Equal1~0_combout\,
	datad => \receiver_map|state_reg.stop~q\,
	combout => \receiver_map|rx_done~0_combout\);

-- Location: LCCOMB_X22_Y7_N26
\receiver_map|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Selector0~0_combout\ = (!\receiver_map|rx_done~0_combout\ & ((\receiver_map|state_reg.idle~q\) # (!\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \receiver_map|rx_done~0_combout\,
	datac => \receiver_map|state_reg.idle~q\,
	combout => \receiver_map|Selector0~0_combout\);

-- Location: FF_X22_Y7_N27
\receiver_map|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|state_reg.idle~q\);

-- Location: LCCOMB_X23_Y8_N4
\receiver_map|s_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[0]~8_combout\ = (\receiver_map|s_reg\(0) & (((\receiver_map|s_reg[0]~2_combout\)))) # (!\receiver_map|s_reg\(0) & (\receiver_map|state_reg.idle~q\ & (\receiver_map|s_reg[0]~3_combout\ & !\receiver_map|s_reg[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|state_reg.idle~q\,
	datab => \receiver_map|s_reg[0]~3_combout\,
	datac => \receiver_map|s_reg\(0),
	datad => \receiver_map|s_reg[0]~2_combout\,
	combout => \receiver_map|s_reg[0]~8_combout\);

-- Location: FF_X23_Y8_N5
\receiver_map|s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|s_reg[0]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|s_reg\(0));

-- Location: LCCOMB_X23_Y8_N10
\receiver_map|s_reg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[1]~7_combout\ = (\receiver_map|s_reg\(1) & ((\receiver_map|s_reg[0]~2_combout\) # ((!\receiver_map|s_reg\(0) & \receiver_map|s_reg[0]~4_combout\)))) # (!\receiver_map|s_reg\(1) & (\receiver_map|s_reg\(0) & 
-- ((\receiver_map|s_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|s_reg\(0),
	datab => \receiver_map|s_reg[0]~2_combout\,
	datac => \receiver_map|s_reg\(1),
	datad => \receiver_map|s_reg[0]~4_combout\,
	combout => \receiver_map|s_reg[1]~7_combout\);

-- Location: FF_X23_Y8_N11
\receiver_map|s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|s_reg[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|s_reg\(1));

-- Location: LCCOMB_X23_Y8_N2
\receiver_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Add0~0_combout\ = \receiver_map|s_reg\(2) $ (((\receiver_map|s_reg\(1) & \receiver_map|s_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|s_reg\(1),
	datac => \receiver_map|s_reg\(0),
	datad => \receiver_map|s_reg\(2),
	combout => \receiver_map|Add0~0_combout\);

-- Location: LCCOMB_X23_Y8_N12
\receiver_map|s_reg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|s_reg[2]~6_combout\ = (\receiver_map|Add0~0_combout\ & ((\receiver_map|s_reg[0]~4_combout\) # ((\receiver_map|s_reg[0]~2_combout\ & \receiver_map|s_reg\(2))))) # (!\receiver_map|Add0~0_combout\ & (\receiver_map|s_reg[0]~2_combout\ & 
-- (\receiver_map|s_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|Add0~0_combout\,
	datab => \receiver_map|s_reg[0]~2_combout\,
	datac => \receiver_map|s_reg\(2),
	datad => \receiver_map|s_reg[0]~4_combout\,
	combout => \receiver_map|s_reg[2]~6_combout\);

-- Location: FF_X23_Y8_N13
\receiver_map|s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|s_reg[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|s_reg\(2));

-- Location: LCCOMB_X23_Y8_N30
\receiver_map|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|Equal1~0_combout\ = (\receiver_map|s_reg\(2) & (\receiver_map|s_reg\(3) & (\receiver_map|s_reg\(0) & \receiver_map|s_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \receiver_map|s_reg\(2),
	datab => \receiver_map|s_reg\(3),
	datac => \receiver_map|s_reg\(0),
	datad => \receiver_map|s_reg\(1),
	combout => \receiver_map|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y3_N30
\fifo_transmiter_map|wr_ptr_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|wr_ptr_reg[0]~1_combout\ = !\fifo_transmiter_map|wr_ptr_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_transmiter_map|wr_ptr_reg\(0),
	combout => \fifo_transmiter_map|wr_ptr_reg[0]~1_combout\);

-- Location: LCCOMB_X23_Y6_N12
\transmiter_map|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector8~3_combout\ = (!\transmiter_map|state_reg.idle~q\ & \fifo_transmiter_map|empty_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmiter_map|state_reg.idle~q\,
	datac => \fifo_transmiter_map|empty_reg~q\,
	combout => \transmiter_map|Selector8~3_combout\);

-- Location: LCCOMB_X23_Y6_N20
\transmiter_map|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector8~4_combout\ = (\transmiter_map|Equal2~0_combout\ & (\transmiter_map|state_reg.start~q\ & (!\transmiter_map|s_reg\(3) & \m_mod_map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Equal2~0_combout\,
	datab => \transmiter_map|state_reg.start~q\,
	datac => \transmiter_map|s_reg\(3),
	datad => \m_mod_map|Equal0~4_combout\,
	combout => \transmiter_map|Selector8~4_combout\);

-- Location: LCCOMB_X23_Y6_N24
\transmiter_map|n_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|n_reg[0]~0_combout\ = (!\transmiter_map|Selector8~4_combout\ & ((\transmiter_map|Selector8~2_combout\) # (!\transmiter_map|data_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmiter_map|data_next~0_combout\,
	datac => \transmiter_map|Selector8~2_combout\,
	datad => \transmiter_map|Selector8~4_combout\,
	combout => \transmiter_map|n_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y8_N4
\transmiter_map|n_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|n_reg[0]~3_combout\ = (\transmiter_map|n_reg\(0) & ((\transmiter_map|n_reg[0]~0_combout\))) # (!\transmiter_map|n_reg\(0) & (\transmiter_map|state_reg.data~q\ & !\transmiter_map|n_reg[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmiter_map|state_reg.data~q\,
	datac => \transmiter_map|n_reg\(0),
	datad => \transmiter_map|n_reg[0]~0_combout\,
	combout => \transmiter_map|n_reg[0]~3_combout\);

-- Location: FF_X22_Y8_N5
\transmiter_map|n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|n_reg[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|n_reg\(0));

-- Location: LCCOMB_X22_Y8_N6
\transmiter_map|n_reg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|n_reg[1]~2_combout\ = (\transmiter_map|n_reg[0]~0_combout\ & (((\transmiter_map|n_reg\(1))))) # (!\transmiter_map|n_reg[0]~0_combout\ & (\transmiter_map|state_reg.data~q\ & (\transmiter_map|n_reg\(0) $ (\transmiter_map|n_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|n_reg\(0),
	datab => \transmiter_map|state_reg.data~q\,
	datac => \transmiter_map|n_reg\(1),
	datad => \transmiter_map|n_reg[0]~0_combout\,
	combout => \transmiter_map|n_reg[1]~2_combout\);

-- Location: FF_X22_Y8_N7
\transmiter_map|n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|n_reg[1]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|n_reg\(1));

-- Location: LCCOMB_X22_Y8_N10
\transmiter_map|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Add1~0_combout\ = \transmiter_map|n_reg\(2) $ (((\transmiter_map|n_reg\(1) & \transmiter_map|n_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|n_reg\(1),
	datac => \transmiter_map|n_reg\(0),
	datad => \transmiter_map|n_reg\(2),
	combout => \transmiter_map|Add1~0_combout\);

-- Location: LCCOMB_X22_Y8_N16
\transmiter_map|n_reg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|n_reg[2]~1_combout\ = (\transmiter_map|n_reg[0]~0_combout\ & (((\transmiter_map|n_reg\(2))))) # (!\transmiter_map|n_reg[0]~0_combout\ & (\transmiter_map|Add1~0_combout\ & (\transmiter_map|state_reg.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Add1~0_combout\,
	datab => \transmiter_map|state_reg.data~q\,
	datac => \transmiter_map|n_reg\(2),
	datad => \transmiter_map|n_reg[0]~0_combout\,
	combout => \transmiter_map|n_reg[2]~1_combout\);

-- Location: FF_X22_Y8_N17
\transmiter_map|n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|n_reg[2]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|n_reg\(2));

-- Location: LCCOMB_X22_Y6_N16
\transmiter_map|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector8~2_combout\ = (\transmiter_map|n_reg\(1) & (\transmiter_map|n_reg\(0) & \transmiter_map|n_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|n_reg\(1),
	datac => \transmiter_map|n_reg\(0),
	datad => \transmiter_map|n_reg\(2),
	combout => \transmiter_map|Selector8~2_combout\);

-- Location: LCCOMB_X23_Y6_N6
\transmiter_map|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector6~1_combout\ = (!\transmiter_map|Selector8~4_combout\ & ((!\transmiter_map|Selector8~2_combout\) # (!\transmiter_map|data_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmiter_map|data_next~0_combout\,
	datac => \transmiter_map|Selector8~2_combout\,
	datad => \transmiter_map|Selector8~4_combout\,
	combout => \transmiter_map|Selector6~1_combout\);

-- Location: LCCOMB_X23_Y6_N14
\transmiter_map|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector6~2_combout\ = (!\transmiter_map|tx_done~2_combout\ & ((\transmiter_map|Selector6~0_combout\ & ((\transmiter_map|state_reg.start~q\))) # (!\transmiter_map|Selector6~0_combout\ & (\transmiter_map|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector6~1_combout\,
	datab => \transmiter_map|tx_done~2_combout\,
	datac => \transmiter_map|state_reg.start~q\,
	datad => \transmiter_map|Selector6~0_combout\,
	combout => \transmiter_map|Selector6~2_combout\);

-- Location: FF_X23_Y6_N15
\transmiter_map|state_reg.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector6~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|state_reg.start~q\);

-- Location: LCCOMB_X19_Y6_N18
\transmiter_map|s_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[0]~3_combout\ = ((\transmiter_map|s_reg\(3) & ((!\transmiter_map|state_reg.data~q\))) # (!\transmiter_map|s_reg\(3) & (!\transmiter_map|state_reg.start~q\))) # (!\transmiter_map|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|state_reg.start~q\,
	datab => \transmiter_map|Equal2~0_combout\,
	datac => \transmiter_map|state_reg.data~q\,
	datad => \transmiter_map|s_reg\(3),
	combout => \transmiter_map|s_reg[0]~3_combout\);

-- Location: LCCOMB_X19_Y6_N10
\transmiter_map|s_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[0]~8_combout\ = (\transmiter_map|s_reg\(0) & (((\transmiter_map|s_reg[3]~2_combout\)))) # (!\transmiter_map|s_reg\(0) & (\transmiter_map|state_reg.idle~q\ & (\transmiter_map|s_reg[0]~3_combout\ & 
-- !\transmiter_map|s_reg[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|state_reg.idle~q\,
	datab => \transmiter_map|s_reg[0]~3_combout\,
	datac => \transmiter_map|s_reg\(0),
	datad => \transmiter_map|s_reg[3]~2_combout\,
	combout => \transmiter_map|s_reg[0]~8_combout\);

-- Location: FF_X19_Y6_N11
\transmiter_map|s_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|s_reg[0]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|s_reg\(0));

-- Location: LCCOMB_X19_Y6_N4
\transmiter_map|s_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[0]~4_combout\ = (\transmiter_map|state_reg.idle~q\ & (\transmiter_map|s_reg[0]~3_combout\ & !\transmiter_map|s_reg[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|state_reg.idle~q\,
	datac => \transmiter_map|s_reg[0]~3_combout\,
	datad => \transmiter_map|s_reg[3]~2_combout\,
	combout => \transmiter_map|s_reg[0]~4_combout\);

-- Location: LCCOMB_X19_Y6_N8
\transmiter_map|s_reg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[1]~7_combout\ = (\transmiter_map|s_reg\(1) & ((\transmiter_map|s_reg[3]~2_combout\) # ((!\transmiter_map|s_reg\(0) & \transmiter_map|s_reg[0]~4_combout\)))) # (!\transmiter_map|s_reg\(1) & (\transmiter_map|s_reg\(0) & 
-- (\transmiter_map|s_reg[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|s_reg\(0),
	datab => \transmiter_map|s_reg[0]~4_combout\,
	datac => \transmiter_map|s_reg\(1),
	datad => \transmiter_map|s_reg[3]~2_combout\,
	combout => \transmiter_map|s_reg[1]~7_combout\);

-- Location: FF_X19_Y6_N9
\transmiter_map|s_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|s_reg[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|s_reg\(1));

-- Location: LCCOMB_X19_Y6_N22
\transmiter_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Add0~0_combout\ = \transmiter_map|s_reg\(2) $ (((\transmiter_map|s_reg\(0) & \transmiter_map|s_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|s_reg\(0),
	datab => \transmiter_map|s_reg\(1),
	datac => \transmiter_map|s_reg\(2),
	combout => \transmiter_map|Add0~0_combout\);

-- Location: LCCOMB_X19_Y6_N26
\transmiter_map|s_reg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[2]~6_combout\ = (\transmiter_map|Add0~0_combout\ & ((\transmiter_map|s_reg[0]~4_combout\) # ((\transmiter_map|s_reg\(2) & \transmiter_map|s_reg[3]~2_combout\)))) # (!\transmiter_map|Add0~0_combout\ & (((\transmiter_map|s_reg\(2) & 
-- \transmiter_map|s_reg[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Add0~0_combout\,
	datab => \transmiter_map|s_reg[0]~4_combout\,
	datac => \transmiter_map|s_reg\(2),
	datad => \transmiter_map|s_reg[3]~2_combout\,
	combout => \transmiter_map|s_reg[2]~6_combout\);

-- Location: FF_X19_Y6_N27
\transmiter_map|s_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|s_reg[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|s_reg\(2));

-- Location: LCCOMB_X19_Y6_N16
\transmiter_map|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Equal2~0_combout\ = (\transmiter_map|s_reg\(2) & (\transmiter_map|s_reg\(1) & \transmiter_map|s_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|s_reg\(2),
	datac => \transmiter_map|s_reg\(1),
	datad => \transmiter_map|s_reg\(0),
	combout => \transmiter_map|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y6_N18
\transmiter_map|data_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|data_next~0_combout\ = (\transmiter_map|Equal2~0_combout\ & (\transmiter_map|state_reg.data~q\ & (\transmiter_map|s_reg\(3) & \m_mod_map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Equal2~0_combout\,
	datab => \transmiter_map|state_reg.data~q\,
	datac => \transmiter_map|s_reg\(3),
	datad => \m_mod_map|Equal0~4_combout\,
	combout => \transmiter_map|data_next~0_combout\);

-- Location: LCCOMB_X23_Y6_N10
\transmiter_map|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector6~0_combout\ = (!\transmiter_map|Selector8~3_combout\ & (!\transmiter_map|Selector8~4_combout\ & ((!\transmiter_map|Selector8~2_combout\) # (!\transmiter_map|data_next~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector8~3_combout\,
	datab => \transmiter_map|data_next~0_combout\,
	datac => \transmiter_map|Selector8~2_combout\,
	datad => \transmiter_map|Selector8~4_combout\,
	combout => \transmiter_map|Selector6~0_combout\);

-- Location: LCCOMB_X22_Y6_N28
\transmiter_map|Selector8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector8~6_combout\ = (\transmiter_map|n_reg\(0) & (\transmiter_map|n_reg\(2) & (\transmiter_map|n_reg\(1) & \transmiter_map|data_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|n_reg\(0),
	datab => \transmiter_map|n_reg\(2),
	datac => \transmiter_map|n_reg\(1),
	datad => \transmiter_map|data_next~0_combout\,
	combout => \transmiter_map|Selector8~6_combout\);

-- Location: LCCOMB_X23_Y6_N8
\transmiter_map|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector8~5_combout\ = (!\transmiter_map|tx_done~2_combout\ & ((\transmiter_map|Selector6~0_combout\ & (\transmiter_map|state_reg.stop~q\)) # (!\transmiter_map|Selector6~0_combout\ & ((\transmiter_map|Selector8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector6~0_combout\,
	datab => \transmiter_map|tx_done~2_combout\,
	datac => \transmiter_map|state_reg.stop~q\,
	datad => \transmiter_map|Selector8~6_combout\,
	combout => \transmiter_map|Selector8~5_combout\);

-- Location: FF_X23_Y6_N9
\transmiter_map|state_reg.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector8~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|state_reg.stop~q\);

-- Location: LCCOMB_X23_Y6_N28
\transmiter_map|tx_done~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|tx_done~2_combout\ = (\m_mod_map|Equal0~4_combout\ & (\transmiter_map|state_reg.stop~q\ & (\transmiter_map|s_reg\(3) & \transmiter_map|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|Equal0~4_combout\,
	datab => \transmiter_map|state_reg.stop~q\,
	datac => \transmiter_map|s_reg\(3),
	datad => \transmiter_map|Equal2~0_combout\,
	combout => \transmiter_map|tx_done~2_combout\);

-- Location: LCCOMB_X23_Y6_N2
\transmiter_map|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector7~0_combout\ = (!\transmiter_map|tx_done~2_combout\ & ((\transmiter_map|Selector6~0_combout\ & ((\transmiter_map|state_reg.data~q\))) # (!\transmiter_map|Selector6~0_combout\ & (\transmiter_map|Selector8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|tx_done~2_combout\,
	datab => \transmiter_map|Selector8~4_combout\,
	datac => \transmiter_map|state_reg.data~q\,
	datad => \transmiter_map|Selector6~0_combout\,
	combout => \transmiter_map|Selector7~0_combout\);

-- Location: FF_X23_Y6_N3
\transmiter_map|state_reg.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector7~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|state_reg.data~q\);

-- Location: LCCOMB_X23_Y6_N16
\transmiter_map|s_reg[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[3]~1_combout\ = (!\m_mod_map|Equal0~4_combout\ & ((\transmiter_map|state_reg.data~q\) # ((\transmiter_map|state_reg.stop~q\) # (\transmiter_map|state_reg.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|state_reg.data~q\,
	datab => \transmiter_map|state_reg.stop~q\,
	datac => \transmiter_map|state_reg.start~q\,
	datad => \m_mod_map|Equal0~4_combout\,
	combout => \transmiter_map|s_reg[3]~1_combout\);

-- Location: LCCOMB_X23_Y6_N22
\transmiter_map|s_reg[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[3]~2_combout\ = (\transmiter_map|s_reg[3]~0_combout\) # ((\transmiter_map|s_reg[3]~1_combout\) # ((!\fifo_transmiter_map|empty_reg~q\ & !\transmiter_map|state_reg.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|empty_reg~q\,
	datab => \transmiter_map|s_reg[3]~0_combout\,
	datac => \transmiter_map|state_reg.idle~q\,
	datad => \transmiter_map|s_reg[3]~1_combout\,
	combout => \transmiter_map|s_reg[3]~2_combout\);

-- Location: LCCOMB_X23_Y6_N26
\transmiter_map|s_reg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[3]~5_combout\ = (\transmiter_map|s_reg\(3) & ((\transmiter_map|s_reg[3]~2_combout\) # ((!\transmiter_map|Equal2~0_combout\ & \transmiter_map|s_reg[0]~4_combout\)))) # (!\transmiter_map|s_reg\(3) & (((\transmiter_map|Equal2~0_combout\ 
-- & \transmiter_map|s_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|s_reg[3]~2_combout\,
	datab => \transmiter_map|Equal2~0_combout\,
	datac => \transmiter_map|s_reg\(3),
	datad => \transmiter_map|s_reg[0]~4_combout\,
	combout => \transmiter_map|s_reg[3]~5_combout\);

-- Location: FF_X23_Y6_N27
\transmiter_map|s_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|s_reg[3]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|s_reg\(3));

-- Location: LCCOMB_X23_Y6_N0
\transmiter_map|s_reg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|s_reg[3]~0_combout\ = (\transmiter_map|s_reg\(3) & (\transmiter_map|state_reg.stop~q\ & \transmiter_map|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|s_reg\(3),
	datac => \transmiter_map|state_reg.stop~q\,
	datad => \transmiter_map|Equal2~0_combout\,
	combout => \transmiter_map|s_reg[3]~0_combout\);

-- Location: LCCOMB_X23_Y7_N18
\fifo_transmiter_map|wr_ptr_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\ = (\receiver_map|rx_done~0_combout\ & (((\m_mod_map|Equal0~4_combout\ & \transmiter_map|s_reg[3]~0_combout\)) # (!\fifo_transmiter_map|full_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|full_reg~q\,
	datab => \m_mod_map|Equal0~4_combout\,
	datac => \transmiter_map|s_reg[3]~0_combout\,
	datad => \receiver_map|rx_done~0_combout\,
	combout => \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\);

-- Location: FF_X24_Y3_N31
\fifo_transmiter_map|wr_ptr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|wr_ptr_reg[0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|wr_ptr_reg\(0));

-- Location: LCCOMB_X24_Y3_N16
\fifo_transmiter_map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add0~4_combout\ = \fifo_transmiter_map|wr_ptr_reg\(0) $ (\fifo_transmiter_map|wr_ptr_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datac => \fifo_transmiter_map|wr_ptr_reg\(1),
	combout => \fifo_transmiter_map|Add0~4_combout\);

-- Location: FF_X24_Y3_N17
\fifo_transmiter_map|wr_ptr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Add0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|wr_ptr_reg\(1));

-- Location: LCCOMB_X22_Y3_N4
\fifo_transmiter_map|rd_ptr_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|rd_ptr_reg[0]~1_combout\ = !\fifo_transmiter_map|rd_ptr_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \fifo_transmiter_map|rd_ptr_reg[0]~1_combout\);

-- Location: LCCOMB_X22_Y7_N30
\fifo_transmiter_map|rd_ptr_reg[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\ = (\m_mod_map|Equal0~4_combout\ & (\transmiter_map|s_reg[3]~0_combout\ & ((\fifo_transmiter_map|empty_reg~q\) # (\receiver_map|rx_done~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|Equal0~4_combout\,
	datab => \fifo_transmiter_map|empty_reg~q\,
	datac => \receiver_map|rx_done~0_combout\,
	datad => \transmiter_map|s_reg[3]~0_combout\,
	combout => \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\);

-- Location: FF_X22_Y3_N5
\fifo_transmiter_map|rd_ptr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|rd_ptr_reg[0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|rd_ptr_reg\(0));

-- Location: LCCOMB_X22_Y3_N16
\fifo_transmiter_map|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add1~3_combout\ = \fifo_transmiter_map|rd_ptr_reg\(0) $ (\fifo_transmiter_map|rd_ptr_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \fifo_transmiter_map|Add1~3_combout\);

-- Location: FF_X22_Y3_N17
\fifo_transmiter_map|rd_ptr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Add1~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|rd_ptr_reg\(1));

-- Location: LCCOMB_X23_Y3_N22
\fifo_transmiter_map|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux13~1_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(0) & (!\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) $ (\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|wr_ptr_reg\(0) & 
-- (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) $ (!\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|rd_ptr_reg\(1),
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \fifo_transmiter_map|Mux13~1_combout\);

-- Location: LCCOMB_X24_Y3_N14
\fifo_transmiter_map|wr_ptr_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|wr_ptr_reg[2]~feeder_combout\ = \fifo_transmiter_map|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_transmiter_map|Add0~2_combout\,
	combout => \fifo_transmiter_map|wr_ptr_reg[2]~feeder_combout\);

-- Location: FF_X24_Y3_N15
\fifo_transmiter_map|wr_ptr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|wr_ptr_reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|wr_ptr_reg\(2));

-- Location: LCCOMB_X24_Y3_N2
\fifo_transmiter_map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add0~2_combout\ = \fifo_transmiter_map|wr_ptr_reg\(2) $ (((\fifo_transmiter_map|wr_ptr_reg\(0) & \fifo_transmiter_map|wr_ptr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datad => \fifo_transmiter_map|wr_ptr_reg\(2),
	combout => \fifo_transmiter_map|Add0~2_combout\);

-- Location: LCCOMB_X22_Y3_N0
\fifo_transmiter_map|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add1~0_combout\ = \fifo_transmiter_map|rd_ptr_reg\(2) $ (((\fifo_transmiter_map|rd_ptr_reg\(0) & \fifo_transmiter_map|rd_ptr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|rd_ptr_reg\(2),
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \fifo_transmiter_map|Add1~0_combout\);

-- Location: FF_X22_Y3_N1
\fifo_transmiter_map|rd_ptr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Add1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|rd_ptr_reg\(2));

-- Location: LCCOMB_X22_Y3_N6
\fifo_transmiter_map|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add1~4_combout\ = \fifo_transmiter_map|rd_ptr_reg\(3) $ (((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|rd_ptr_reg\(2) & \fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|rd_ptr_reg\(3),
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \fifo_transmiter_map|Add1~4_combout\);

-- Location: FF_X22_Y3_N7
\fifo_transmiter_map|rd_ptr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Add1~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|rd_ptr_reg\(3));

-- Location: LCCOMB_X22_Y3_N20
\fifo_transmiter_map|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add1~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|rd_ptr_reg\(0) & \fifo_transmiter_map|rd_ptr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|rd_ptr_reg\(0),
	datad => \fifo_transmiter_map|rd_ptr_reg\(2),
	combout => \fifo_transmiter_map|Add1~1_combout\);

-- Location: LCCOMB_X22_Y3_N24
\fifo_transmiter_map|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add1~2_combout\ = \fifo_transmiter_map|rd_ptr_reg\(4) $ (\fifo_transmiter_map|Add1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_transmiter_map|rd_ptr_reg\(4),
	datad => \fifo_transmiter_map|Add1~1_combout\,
	combout => \fifo_transmiter_map|Add1~2_combout\);

-- Location: FF_X22_Y3_N25
\fifo_transmiter_map|rd_ptr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Add1~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|rd_ptr_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|rd_ptr_reg\(4));

-- Location: LCCOMB_X24_Y3_N4
\fifo_transmiter_map|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add0~3_combout\ = \fifo_transmiter_map|wr_ptr_reg\(3) $ (((\fifo_transmiter_map|wr_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) & \fifo_transmiter_map|wr_ptr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|wr_ptr_reg\(2),
	combout => \fifo_transmiter_map|Add0~3_combout\);

-- Location: FF_X24_Y3_N5
\fifo_transmiter_map|wr_ptr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Add0~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|wr_ptr_reg\(3));

-- Location: LCCOMB_X24_Y3_N26
\fifo_transmiter_map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add0~0_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) & (\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|wr_ptr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|wr_ptr_reg\(2),
	combout => \fifo_transmiter_map|Add0~0_combout\);

-- Location: LCCOMB_X24_Y3_N0
\fifo_transmiter_map|wr_ptr_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|wr_ptr_reg[4]~feeder_combout\ = \fifo_transmiter_map|Add0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_transmiter_map|Add0~1_combout\,
	combout => \fifo_transmiter_map|wr_ptr_reg[4]~feeder_combout\);

-- Location: FF_X24_Y3_N1
\fifo_transmiter_map|wr_ptr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|wr_ptr_reg[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|wr_ptr_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|wr_ptr_reg\(4));

-- Location: LCCOMB_X24_Y3_N24
\fifo_transmiter_map|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Add0~1_combout\ = \fifo_transmiter_map|Add0~0_combout\ $ (\fifo_transmiter_map|wr_ptr_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_transmiter_map|Add0~0_combout\,
	datad => \fifo_transmiter_map|wr_ptr_reg\(4),
	combout => \fifo_transmiter_map|Add0~1_combout\);

-- Location: LCCOMB_X23_Y3_N4
\fifo_transmiter_map|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux13~0_combout\ = (\fifo_transmiter_map|Add0~2_combout\ & (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(4) $ (!\fifo_transmiter_map|Add0~1_combout\)))) # (!\fifo_transmiter_map|Add0~2_combout\ & 
-- (!\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(4) $ (!\fifo_transmiter_map|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|Add0~2_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(4),
	datac => \fifo_transmiter_map|rd_ptr_reg\(2),
	datad => \fifo_transmiter_map|Add0~1_combout\,
	combout => \fifo_transmiter_map|Mux13~0_combout\);

-- Location: LCCOMB_X23_Y3_N16
\fifo_transmiter_map|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux13~2_combout\ = (\fifo_transmiter_map|Mux13~1_combout\ & (\fifo_transmiter_map|Mux13~0_combout\ & (\fifo_transmiter_map|rd_ptr_reg\(3) $ (!\fifo_transmiter_map|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|Mux13~1_combout\,
	datab => \fifo_transmiter_map|Mux13~0_combout\,
	datac => \fifo_transmiter_map|rd_ptr_reg\(3),
	datad => \fifo_transmiter_map|Add0~3_combout\,
	combout => \fifo_transmiter_map|Mux13~2_combout\);

-- Location: LCCOMB_X22_Y7_N12
\fifo_transmiter_map|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux13~3_combout\ = (\receiver_map|rx_done~0_combout\ & (((\fifo_transmiter_map|full_reg~q\) # (\fifo_transmiter_map|Mux13~2_combout\)))) # (!\receiver_map|rx_done~0_combout\ & (!\fifo_transmiter_map|empty_reg~q\ & 
-- (\fifo_transmiter_map|full_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|empty_reg~q\,
	datab => \receiver_map|rx_done~0_combout\,
	datac => \fifo_transmiter_map|full_reg~q\,
	datad => \fifo_transmiter_map|Mux13~2_combout\,
	combout => \fifo_transmiter_map|Mux13~3_combout\);

-- Location: LCCOMB_X22_Y7_N2
\fifo_transmiter_map|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux13~4_combout\ = \receiver_map|rx_done~0_combout\ $ (((\m_mod_map|Equal0~4_combout\ & \transmiter_map|s_reg[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|Equal0~4_combout\,
	datac => \receiver_map|rx_done~0_combout\,
	datad => \transmiter_map|s_reg[3]~0_combout\,
	combout => \fifo_transmiter_map|Mux13~4_combout\);

-- Location: FF_X22_Y7_N13
\fifo_transmiter_map|full_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Mux13~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|full_reg~q\);

-- Location: LCCOMB_X23_Y7_N24
\fifo_transmiter_map|transmission1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|transmission1~0_combout\ = (!\fifo_transmiter_map|full_reg~q\ & \receiver_map|state_reg.stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|full_reg~q\,
	datad => \receiver_map|state_reg.stop~q\,
	combout => \fifo_transmiter_map|transmission1~0_combout\);

-- Location: LCCOMB_X23_Y7_N6
\fifo_transmiter_map|transmission1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|transmission1~1_combout\ = (\m_mod_map|Equal0~1_combout\ & (\receiver_map|Equal1~0_combout\ & (\m_mod_map|Equal0~0_combout\ & \fifo_transmiter_map|transmission1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_mod_map|Equal0~1_combout\,
	datab => \receiver_map|Equal1~0_combout\,
	datac => \m_mod_map|Equal0~0_combout\,
	datad => \fifo_transmiter_map|transmission1~0_combout\,
	combout => \fifo_transmiter_map|transmission1~1_combout\);

-- Location: LCCOMB_X23_Y3_N8
\fifo_transmiter_map|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux14~1_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(0) & (!\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) $ (!\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|wr_ptr_reg\(0) & 
-- (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) $ (\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|rd_ptr_reg\(1),
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \fifo_transmiter_map|Mux14~1_combout\);

-- Location: LCCOMB_X23_Y3_N6
\fifo_transmiter_map|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux14~0_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(2) & (\fifo_transmiter_map|Add1~0_combout\ & (\fifo_transmiter_map|wr_ptr_reg\(4) $ (!\fifo_transmiter_map|Add1~2_combout\)))) # (!\fifo_transmiter_map|wr_ptr_reg\(2) & 
-- (!\fifo_transmiter_map|Add1~0_combout\ & (\fifo_transmiter_map|wr_ptr_reg\(4) $ (!\fifo_transmiter_map|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(2),
	datab => \fifo_transmiter_map|Add1~0_combout\,
	datac => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Add1~2_combout\,
	combout => \fifo_transmiter_map|Mux14~0_combout\);

-- Location: LCCOMB_X23_Y3_N18
\fifo_transmiter_map|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux14~2_combout\ = (\fifo_transmiter_map|Mux14~1_combout\ & (\fifo_transmiter_map|Mux14~0_combout\ & (\fifo_transmiter_map|wr_ptr_reg\(3) $ (!\fifo_transmiter_map|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|Add1~4_combout\,
	datac => \fifo_transmiter_map|Mux14~1_combout\,
	datad => \fifo_transmiter_map|Mux14~0_combout\,
	combout => \fifo_transmiter_map|Mux14~2_combout\);

-- Location: LCCOMB_X22_Y7_N8
\fifo_transmiter_map|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux14~3_combout\ = (\fifo_transmiter_map|transmission1~1_combout\ & ((\receiver_map|rx_done~0_combout\) # ((!\fifo_transmiter_map|Mux14~2_combout\)))) # (!\fifo_transmiter_map|transmission1~1_combout\ & 
-- (\fifo_transmiter_map|empty_reg~q\ & ((\receiver_map|rx_done~0_combout\) # (!\fifo_transmiter_map|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|transmission1~1_combout\,
	datab => \receiver_map|rx_done~0_combout\,
	datac => \fifo_transmiter_map|empty_reg~q\,
	datad => \fifo_transmiter_map|Mux14~2_combout\,
	combout => \fifo_transmiter_map|Mux14~3_combout\);

-- Location: FF_X22_Y7_N9
\fifo_transmiter_map|empty_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|Mux14~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Mux13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|empty_reg~q\);

-- Location: LCCOMB_X23_Y6_N4
\transmiter_map|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector5~0_combout\ = (\fifo_transmiter_map|empty_reg~q\ & (((!\m_mod_map|Equal0~4_combout\)) # (!\transmiter_map|s_reg[3]~0_combout\))) # (!\fifo_transmiter_map|empty_reg~q\ & (\transmiter_map|state_reg.idle~q\ & 
-- ((!\m_mod_map|Equal0~4_combout\) # (!\transmiter_map|s_reg[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|empty_reg~q\,
	datab => \transmiter_map|s_reg[3]~0_combout\,
	datac => \transmiter_map|state_reg.idle~q\,
	datad => \m_mod_map|Equal0~4_combout\,
	combout => \transmiter_map|Selector5~0_combout\);

-- Location: FF_X23_Y6_N5
\transmiter_map|state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|state_reg.idle~q\);

-- Location: FF_X24_Y5_N5
\receiver_map|d_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(0));

-- Location: LCCOMB_X24_Y5_N26
\receiver_map|d_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[1]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \receiver_map|d_reg[1]~feeder_combout\);

-- Location: FF_X24_Y5_N27
\receiver_map|d_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|d_reg[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(1));

-- Location: LCCOMB_X24_Y5_N12
\receiver_map|d_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[2]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \receiver_map|d_reg[2]~feeder_combout\);

-- Location: FF_X24_Y5_N13
\receiver_map|d_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|d_reg[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(2));

-- Location: LCCOMB_X24_Y5_N6
\receiver_map|d_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[3]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(2),
	combout => \receiver_map|d_reg[3]~feeder_combout\);

-- Location: FF_X24_Y5_N7
\receiver_map|d_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|d_reg[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(3));

-- Location: LCCOMB_X24_Y5_N16
\receiver_map|d_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[4]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(3),
	combout => \receiver_map|d_reg[4]~feeder_combout\);

-- Location: FF_X24_Y5_N17
\receiver_map|d_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|d_reg[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(4));

-- Location: LCCOMB_X21_Y5_N16
\receiver_map|d_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[5]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \receiver_map|d_reg[5]~feeder_combout\);

-- Location: FF_X21_Y5_N17
\receiver_map|d_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|d_reg[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(5));

-- Location: LCCOMB_X24_Y5_N22
\receiver_map|d_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[6]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \receiver_map|d_reg[6]~feeder_combout\);

-- Location: FF_X24_Y5_N23
\receiver_map|d_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|d_reg[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(6));

-- Location: LCCOMB_X21_Y5_N14
\receiver_map|d_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \receiver_map|d_reg[7]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(6),
	combout => \receiver_map|d_reg[7]~feeder_combout\);

-- Location: FF_X21_Y5_N15
\receiver_map|d_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \receiver_map|d_reg[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \receiver_map|d_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \receiver_map|d_reg\(7));

-- Location: LCCOMB_X26_Y5_N4
\fifo_transmiter_map|array_reg[23][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[23][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N14
\fifo_transmiter_map|Decoder0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~18_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) & (\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~18_combout\);

-- Location: LCCOMB_X26_Y5_N14
\fifo_transmiter_map|Decoder0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~19_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(4) & (!\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datac => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~18_combout\,
	combout => \fifo_transmiter_map|Decoder0~19_combout\);

-- Location: FF_X26_Y5_N5
\fifo_transmiter_map|array_reg[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][7]~q\);

-- Location: LCCOMB_X25_Y5_N26
\fifo_transmiter_map|Decoder0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~23_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~18_combout\,
	combout => \fifo_transmiter_map|Decoder0~23_combout\);

-- Location: FF_X25_Y5_N3
\fifo_transmiter_map|array_reg[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][7]~q\);

-- Location: LCCOMB_X24_Y5_N28
\fifo_transmiter_map|array_reg[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[30][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N0
\fifo_transmiter_map|Decoder0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~20_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) & (\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~20_combout\);

-- Location: LCCOMB_X24_Y5_N4
\fifo_transmiter_map|Decoder0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~21_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(4) & (\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~20_combout\,
	combout => \fifo_transmiter_map|Decoder0~21_combout\);

-- Location: FF_X24_Y5_N29
\fifo_transmiter_map|array_reg[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][7]~q\);

-- Location: LCCOMB_X25_Y5_N4
\fifo_transmiter_map|Decoder0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~22_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~20_combout\,
	combout => \fifo_transmiter_map|Decoder0~22_combout\);

-- Location: FF_X25_Y5_N1
\fifo_transmiter_map|array_reg[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][7]~q\);

-- Location: LCCOMB_X25_Y5_N0
\transmiter_map|Selector9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[30][7]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|array_reg[22][7]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[30][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[22][7]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector9~7_combout\);

-- Location: LCCOMB_X25_Y5_N2
\transmiter_map|Selector9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~8_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector9~7_combout\ & ((\fifo_transmiter_map|array_reg[31][7]~q\))) # (!\transmiter_map|Selector9~7_combout\ & (\fifo_transmiter_map|array_reg[23][7]~q\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[23][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[31][7]~q\,
	datad => \transmiter_map|Selector9~7_combout\,
	combout => \transmiter_map|Selector9~8_combout\);

-- Location: LCCOMB_X25_Y3_N26
\fifo_transmiter_map|array_reg[27][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[27][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[27][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N10
\fifo_transmiter_map|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~2_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) & (!\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~2_combout\);

-- Location: LCCOMB_X25_Y3_N14
\fifo_transmiter_map|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~5_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(4) & (\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~2_combout\,
	combout => \fifo_transmiter_map|Decoder0~5_combout\);

-- Location: FF_X25_Y3_N27
\fifo_transmiter_map|array_reg[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[27][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][7]~q\);

-- Location: LCCOMB_X23_Y7_N12
\fifo_transmiter_map|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~0_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(0) & (\fifo_transmiter_map|wr_ptr_reg\(1) & (!\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y3_N28
\fifo_transmiter_map|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~1_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(4) & (\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~0_combout\,
	combout => \fifo_transmiter_map|Decoder0~1_combout\);

-- Location: FF_X25_Y3_N21
\fifo_transmiter_map|array_reg[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][7]~q\);

-- Location: LCCOMB_X26_Y3_N0
\fifo_transmiter_map|array_reg[19][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[19][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[19][7]~feeder_combout\);

-- Location: LCCOMB_X26_Y3_N4
\fifo_transmiter_map|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~3_combout\ = (\fifo_transmiter_map|Decoder0~2_combout\ & (\fifo_transmiter_map|wr_ptr_reg\(4) & !\fifo_transmiter_map|wr_ptr_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|Decoder0~2_combout\,
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|wr_ptr_reg\(3),
	combout => \fifo_transmiter_map|Decoder0~3_combout\);

-- Location: FF_X26_Y3_N1
\fifo_transmiter_map|array_reg[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[19][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][7]~q\);

-- Location: LCCOMB_X26_Y3_N22
\fifo_transmiter_map|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~4_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~0_combout\,
	combout => \fifo_transmiter_map|Decoder0~4_combout\);

-- Location: FF_X26_Y3_N7
\fifo_transmiter_map|array_reg[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][7]~q\);

-- Location: LCCOMB_X26_Y3_N6
\transmiter_map|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[19][7]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[18][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[19][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][7]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector9~0_combout\);

-- Location: LCCOMB_X25_Y3_N20
\transmiter_map|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector9~0_combout\ & (\fifo_transmiter_map|array_reg[27][7]~q\)) # (!\transmiter_map|Selector9~0_combout\ & ((\fifo_transmiter_map|array_reg[26][7]~q\))))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[27][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[26][7]~q\,
	datad => \transmiter_map|Selector9~0_combout\,
	combout => \transmiter_map|Selector9~1_combout\);

-- Location: LCCOMB_X24_Y6_N0
\fifo_transmiter_map|array_reg[21][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[21][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N8
\fifo_transmiter_map|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~6_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(0) & (!\fifo_transmiter_map|wr_ptr_reg\(1) & (\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~6_combout\);

-- Location: LCCOMB_X24_Y6_N10
\fifo_transmiter_map|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~7_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(4) & (\fifo_transmiter_map|Decoder0~6_combout\ & !\fifo_transmiter_map|wr_ptr_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datac => \fifo_transmiter_map|Decoder0~6_combout\,
	datad => \fifo_transmiter_map|wr_ptr_reg\(3),
	combout => \fifo_transmiter_map|Decoder0~7_combout\);

-- Location: FF_X24_Y6_N1
\fifo_transmiter_map|array_reg[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][7]~q\);

-- Location: LCCOMB_X23_Y5_N6
\fifo_transmiter_map|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~11_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datac => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~6_combout\,
	combout => \fifo_transmiter_map|Decoder0~11_combout\);

-- Location: FF_X23_Y5_N11
\fifo_transmiter_map|array_reg[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][7]~q\);

-- Location: LCCOMB_X21_Y5_N8
\fifo_transmiter_map|array_reg[28][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[28][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N30
\fifo_transmiter_map|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~8_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(0) & (!\fifo_transmiter_map|wr_ptr_reg\(1) & (\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~8_combout\);

-- Location: LCCOMB_X21_Y5_N18
\fifo_transmiter_map|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~9_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datac => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~8_combout\,
	combout => \fifo_transmiter_map|Decoder0~9_combout\);

-- Location: FF_X21_Y5_N9
\fifo_transmiter_map|array_reg[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][7]~q\);

-- Location: LCCOMB_X23_Y5_N8
\fifo_transmiter_map|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~10_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datac => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~8_combout\,
	combout => \fifo_transmiter_map|Decoder0~10_combout\);

-- Location: FF_X23_Y5_N13
\fifo_transmiter_map|array_reg[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][7]~q\);

-- Location: LCCOMB_X23_Y5_N12
\transmiter_map|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[28][7]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[20][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[28][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[20][7]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector9~2_combout\);

-- Location: LCCOMB_X23_Y5_N10
\transmiter_map|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector9~2_combout\ & ((\fifo_transmiter_map|array_reg[29][7]~q\))) # (!\transmiter_map|Selector9~2_combout\ & (\fifo_transmiter_map|array_reg[21][7]~q\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[21][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[29][7]~q\,
	datad => \transmiter_map|Selector9~2_combout\,
	combout => \transmiter_map|Selector9~3_combout\);

-- Location: LCCOMB_X24_Y4_N24
\fifo_transmiter_map|array_reg[24][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[24][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[24][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N28
\fifo_transmiter_map|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~12_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(0) & (!\fifo_transmiter_map|wr_ptr_reg\(1) & (!\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~12_combout\);

-- Location: LCCOMB_X23_Y7_N2
\fifo_transmiter_map|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~13_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(4) & (\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~12_combout\,
	combout => \fifo_transmiter_map|Decoder0~13_combout\);

-- Location: FF_X24_Y4_N25
\fifo_transmiter_map|array_reg[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[24][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][7]~q\);

-- Location: LCCOMB_X23_Y7_N16
\fifo_transmiter_map|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~14_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(0) & (!\fifo_transmiter_map|wr_ptr_reg\(1) & (!\fifo_transmiter_map|wr_ptr_reg\(2) & \fifo_transmiter_map|transmission1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(0),
	datab => \fifo_transmiter_map|wr_ptr_reg\(1),
	datac => \fifo_transmiter_map|wr_ptr_reg\(2),
	datad => \fifo_transmiter_map|transmission1~1_combout\,
	combout => \fifo_transmiter_map|Decoder0~14_combout\);

-- Location: LCCOMB_X23_Y4_N20
\fifo_transmiter_map|Decoder0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~17_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(4) & (\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~14_combout\,
	combout => \fifo_transmiter_map|Decoder0~17_combout\);

-- Location: FF_X23_Y2_N29
\fifo_transmiter_map|array_reg[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][7]~q\);

-- Location: LCCOMB_X24_Y4_N26
\fifo_transmiter_map|array_reg[17][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[17][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[17][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y4_N4
\fifo_transmiter_map|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~15_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~14_combout\,
	combout => \fifo_transmiter_map|Decoder0~15_combout\);

-- Location: FF_X24_Y4_N27
\fifo_transmiter_map|array_reg[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[17][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][7]~q\);

-- Location: LCCOMB_X23_Y4_N18
\fifo_transmiter_map|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~16_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datac => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~12_combout\,
	combout => \fifo_transmiter_map|Decoder0~16_combout\);

-- Location: FF_X23_Y4_N5
\fifo_transmiter_map|array_reg[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][7]~q\);

-- Location: LCCOMB_X23_Y4_N4
\transmiter_map|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[17][7]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|array_reg[16][7]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[17][7]~q\,
	datac => \fifo_transmiter_map|array_reg[16][7]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector9~4_combout\);

-- Location: LCCOMB_X23_Y2_N28
\transmiter_map|Selector9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~5_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector9~4_combout\ & ((\fifo_transmiter_map|array_reg[25][7]~q\))) # (!\transmiter_map|Selector9~4_combout\ & (\fifo_transmiter_map|array_reg[24][7]~q\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|array_reg[24][7]~q\,
	datac => \fifo_transmiter_map|array_reg[25][7]~q\,
	datad => \transmiter_map|Selector9~4_combout\,
	combout => \transmiter_map|Selector9~5_combout\);

-- Location: LCCOMB_X23_Y2_N18
\transmiter_map|Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\transmiter_map|Selector9~3_combout\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- ((\transmiter_map|Selector9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector9~3_combout\,
	datad => \transmiter_map|Selector9~5_combout\,
	combout => \transmiter_map|Selector9~6_combout\);

-- Location: LCCOMB_X23_Y2_N0
\transmiter_map|Selector9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector9~6_combout\ & (\transmiter_map|Selector9~8_combout\)) # (!\transmiter_map|Selector9~6_combout\ & ((\transmiter_map|Selector9~1_combout\))))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \transmiter_map|Selector9~8_combout\,
	datac => \transmiter_map|Selector9~1_combout\,
	datad => \transmiter_map|Selector9~6_combout\,
	combout => \transmiter_map|Selector9~9_combout\);

-- Location: LCCOMB_X21_Y4_N4
\fifo_transmiter_map|Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~26_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~12_combout\,
	combout => \fifo_transmiter_map|Decoder0~26_combout\);

-- Location: FF_X21_Y4_N9
\fifo_transmiter_map|array_reg[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][7]~q\);

-- Location: LCCOMB_X21_Y6_N8
\fifo_transmiter_map|array_reg[12][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[12][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[12][7]~feeder_combout\);

-- Location: LCCOMB_X21_Y6_N20
\fifo_transmiter_map|Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~25_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|Decoder0~8_combout\ & !\fifo_transmiter_map|wr_ptr_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|Decoder0~8_combout\,
	datad => \fifo_transmiter_map|wr_ptr_reg\(4),
	combout => \fifo_transmiter_map|Decoder0~25_combout\);

-- Location: FF_X21_Y6_N9
\fifo_transmiter_map|array_reg[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[12][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][7]~q\);

-- Location: LCCOMB_X21_Y4_N8
\transmiter_map|Selector9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\fifo_transmiter_map|array_reg[12][7]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\fifo_transmiter_map|array_reg[8][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[8][7]~q\,
	datad => \fifo_transmiter_map|array_reg[12][7]~q\,
	combout => \transmiter_map|Selector9~10_combout\);

-- Location: LCCOMB_X21_Y4_N6
\fifo_transmiter_map|Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~27_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~20_combout\,
	combout => \fifo_transmiter_map|Decoder0~27_combout\);

-- Location: FF_X21_Y4_N7
\fifo_transmiter_map|array_reg[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][7]~q\);

-- Location: LCCOMB_X21_Y3_N20
\fifo_transmiter_map|Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~24_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~0_combout\,
	combout => \fifo_transmiter_map|Decoder0~24_combout\);

-- Location: FF_X21_Y3_N5
\fifo_transmiter_map|array_reg[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][7]~q\);

-- Location: LCCOMB_X21_Y3_N4
\transmiter_map|Selector9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~11_combout\ = (\transmiter_map|Selector9~10_combout\ & ((\fifo_transmiter_map|array_reg[14][7]~q\) # ((!\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\transmiter_map|Selector9~10_combout\ & 
-- (((\fifo_transmiter_map|array_reg[10][7]~q\ & \fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector9~10_combout\,
	datab => \fifo_transmiter_map|array_reg[14][7]~q\,
	datac => \fifo_transmiter_map|array_reg[10][7]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector9~11_combout\);

-- Location: LCCOMB_X26_Y4_N0
\fifo_transmiter_map|array_reg[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[11][7]~feeder_combout\);

-- Location: LCCOMB_X26_Y4_N18
\fifo_transmiter_map|Decoder0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~36_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(4) & (\fifo_transmiter_map|Decoder0~2_combout\ & \fifo_transmiter_map|wr_ptr_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datac => \fifo_transmiter_map|Decoder0~2_combout\,
	datad => \fifo_transmiter_map|wr_ptr_reg\(3),
	combout => \fifo_transmiter_map|Decoder0~36_combout\);

-- Location: FF_X26_Y4_N1
\fifo_transmiter_map|array_reg[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][7]~q\);

-- Location: LCCOMB_X25_Y4_N24
\fifo_transmiter_map|Decoder0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~39_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datac => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~18_combout\,
	combout => \fifo_transmiter_map|Decoder0~39_combout\);

-- Location: FF_X25_Y4_N31
\fifo_transmiter_map|array_reg[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][7]~q\);

-- Location: LCCOMB_X22_Y4_N16
\fifo_transmiter_map|array_reg[13][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[13][7]~feeder_combout\);

-- Location: LCCOMB_X22_Y4_N10
\fifo_transmiter_map|Decoder0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~37_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datac => \fifo_transmiter_map|Decoder0~6_combout\,
	combout => \fifo_transmiter_map|Decoder0~37_combout\);

-- Location: FF_X22_Y4_N17
\fifo_transmiter_map|array_reg[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][7]~q\);

-- Location: LCCOMB_X24_Y4_N18
\fifo_transmiter_map|Decoder0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~38_combout\ = (\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~14_combout\,
	combout => \fifo_transmiter_map|Decoder0~38_combout\);

-- Location: FF_X25_Y4_N29
\fifo_transmiter_map|array_reg[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][7]~q\);

-- Location: LCCOMB_X25_Y4_N28
\transmiter_map|Selector9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|array_reg[13][7]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|array_reg[9][7]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[13][7]~q\,
	datac => \fifo_transmiter_map|array_reg[9][7]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector9~17_combout\);

-- Location: LCCOMB_X25_Y4_N30
\transmiter_map|Selector9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector9~17_combout\ & ((\fifo_transmiter_map|array_reg[15][7]~q\))) # (!\transmiter_map|Selector9~17_combout\ & 
-- (\fifo_transmiter_map|array_reg[11][7]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector9~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|array_reg[11][7]~q\,
	datac => \fifo_transmiter_map|array_reg[15][7]~q\,
	datad => \transmiter_map|Selector9~17_combout\,
	combout => \transmiter_map|Selector9~18_combout\);

-- Location: LCCOMB_X26_Y6_N0
\fifo_transmiter_map|array_reg[4][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][7]~feeder_combout\ = \receiver_map|d_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(7),
	combout => \fifo_transmiter_map|array_reg[4][7]~feeder_combout\);

-- Location: LCCOMB_X26_Y6_N18
\fifo_transmiter_map|Decoder0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~32_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(4) & (!\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datac => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~8_combout\,
	combout => \fifo_transmiter_map|Decoder0~32_combout\);

-- Location: FF_X26_Y6_N1
\fifo_transmiter_map|array_reg[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][7]~q\);

-- Location: LCCOMB_X22_Y5_N0
\fifo_transmiter_map|Decoder0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~35_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(4) & (!\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datac => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~20_combout\,
	combout => \fifo_transmiter_map|Decoder0~35_combout\);

-- Location: FF_X22_Y5_N31
\fifo_transmiter_map|array_reg[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][7]~q\);

-- Location: LCCOMB_X23_Y7_N20
\fifo_transmiter_map|Decoder0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~34_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(4) & (!\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~12_combout\,
	combout => \fifo_transmiter_map|Decoder0~34_combout\);

-- Location: FF_X22_Y5_N25
\fifo_transmiter_map|array_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][7]~q\);

-- Location: LCCOMB_X23_Y7_N26
\fifo_transmiter_map|Decoder0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~33_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(4) & (!\fifo_transmiter_map|wr_ptr_reg\(3) & \fifo_transmiter_map|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(4),
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datad => \fifo_transmiter_map|Decoder0~0_combout\,
	combout => \fifo_transmiter_map|Decoder0~33_combout\);

-- Location: FF_X24_Y7_N13
\fifo_transmiter_map|array_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][7]~q\);

-- Location: LCCOMB_X22_Y5_N24
\transmiter_map|Selector9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2)) # ((\fifo_transmiter_map|array_reg[2][7]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (!\fifo_transmiter_map|rd_ptr_reg\(2) & 
-- (\fifo_transmiter_map|array_reg[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[0][7]~q\,
	datad => \fifo_transmiter_map|array_reg[2][7]~q\,
	combout => \transmiter_map|Selector9~14_combout\);

-- Location: LCCOMB_X22_Y5_N30
\transmiter_map|Selector9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~15_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector9~14_combout\ & ((\fifo_transmiter_map|array_reg[6][7]~q\))) # (!\transmiter_map|Selector9~14_combout\ & (\fifo_transmiter_map|array_reg[4][7]~q\)))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[4][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[6][7]~q\,
	datad => \transmiter_map|Selector9~14_combout\,
	combout => \transmiter_map|Selector9~15_combout\);

-- Location: LCCOMB_X21_Y6_N14
\fifo_transmiter_map|Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~28_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~6_combout\,
	combout => \fifo_transmiter_map|Decoder0~28_combout\);

-- Location: FF_X21_Y6_N15
\fifo_transmiter_map|array_reg[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][7]~q\);

-- Location: LCCOMB_X21_Y7_N8
\fifo_transmiter_map|Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~31_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~18_combout\,
	combout => \fifo_transmiter_map|Decoder0~31_combout\);

-- Location: FF_X21_Y3_N15
\fifo_transmiter_map|array_reg[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][7]~q\);

-- Location: LCCOMB_X21_Y7_N22
\fifo_transmiter_map|Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~30_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (!\fifo_transmiter_map|wr_ptr_reg\(4) & \fifo_transmiter_map|Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|wr_ptr_reg\(3),
	datab => \fifo_transmiter_map|wr_ptr_reg\(4),
	datad => \fifo_transmiter_map|Decoder0~14_combout\,
	combout => \fifo_transmiter_map|Decoder0~30_combout\);

-- Location: FF_X21_Y7_N5
\fifo_transmiter_map|array_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][7]~q\);

-- Location: LCCOMB_X24_Y3_N12
\fifo_transmiter_map|Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Decoder0~29_combout\ = (!\fifo_transmiter_map|wr_ptr_reg\(3) & (\fifo_transmiter_map|Decoder0~2_combout\ & !\fifo_transmiter_map|wr_ptr_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_transmiter_map|wr_ptr_reg\(3),
	datac => \fifo_transmiter_map|Decoder0~2_combout\,
	datad => \fifo_transmiter_map|wr_ptr_reg\(4),
	combout => \fifo_transmiter_map|Decoder0~29_combout\);

-- Location: FF_X24_Y3_N3
\fifo_transmiter_map|array_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][7]~q\);

-- Location: LCCOMB_X21_Y7_N4
\transmiter_map|Selector9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(1))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[3][7]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[1][7]~q\,
	datad => \fifo_transmiter_map|array_reg[3][7]~q\,
	combout => \transmiter_map|Selector9~12_combout\);

-- Location: LCCOMB_X21_Y3_N14
\transmiter_map|Selector9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~13_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector9~12_combout\ & ((\fifo_transmiter_map|array_reg[7][7]~q\))) # (!\transmiter_map|Selector9~12_combout\ & (\fifo_transmiter_map|array_reg[5][7]~q\)))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[5][7]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[7][7]~q\,
	datad => \transmiter_map|Selector9~12_combout\,
	combout => \transmiter_map|Selector9~13_combout\);

-- Location: LCCOMB_X22_Y3_N2
\transmiter_map|Selector9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|rd_ptr_reg\(0))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector9~13_combout\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (\transmiter_map|Selector9~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \transmiter_map|Selector9~15_combout\,
	datad => \transmiter_map|Selector9~13_combout\,
	combout => \transmiter_map|Selector9~16_combout\);

-- Location: LCCOMB_X22_Y3_N12
\transmiter_map|Selector9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~19_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector9~16_combout\ & ((\transmiter_map|Selector9~18_combout\))) # (!\transmiter_map|Selector9~16_combout\ & (\transmiter_map|Selector9~11_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \transmiter_map|Selector9~11_combout\,
	datac => \transmiter_map|Selector9~18_combout\,
	datad => \transmiter_map|Selector9~16_combout\,
	combout => \transmiter_map|Selector9~19_combout\);

-- Location: LCCOMB_X22_Y3_N8
\transmiter_map|Selector9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector9~20_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(4) & (\transmiter_map|Selector9~9_combout\)) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & ((\transmiter_map|Selector9~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector9~9_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(4),
	datad => \transmiter_map|Selector9~19_combout\,
	combout => \transmiter_map|Selector9~20_combout\);

-- Location: LCCOMB_X26_Y4_N24
\fifo_transmiter_map|array_reg[11][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[11][6]~feeder_combout\);

-- Location: FF_X26_Y4_N25
\fifo_transmiter_map|array_reg[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][6]~q\);

-- Location: FF_X25_Y4_N15
\fifo_transmiter_map|array_reg[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][6]~q\);

-- Location: LCCOMB_X25_Y4_N14
\transmiter_map|Selector10~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[11][6]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[9][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[11][6]~q\,
	datac => \fifo_transmiter_map|array_reg[9][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector10~17_combout\);

-- Location: FF_X25_Y4_N21
\fifo_transmiter_map|array_reg[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][6]~q\);

-- Location: LCCOMB_X22_Y4_N4
\fifo_transmiter_map|array_reg[13][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[13][6]~feeder_combout\);

-- Location: FF_X22_Y4_N5
\fifo_transmiter_map|array_reg[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][6]~q\);

-- Location: LCCOMB_X25_Y4_N20
\transmiter_map|Selector10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector10~17_combout\ & (\fifo_transmiter_map|array_reg[15][6]~q\)) # (!\transmiter_map|Selector10~17_combout\ & 
-- ((\fifo_transmiter_map|array_reg[13][6]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (\transmiter_map|Selector10~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \transmiter_map|Selector10~17_combout\,
	datac => \fifo_transmiter_map|array_reg[15][6]~q\,
	datad => \fifo_transmiter_map|array_reg[13][6]~q\,
	combout => \transmiter_map|Selector10~18_combout\);

-- Location: FF_X23_Y7_N27
\fifo_transmiter_map|array_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][6]~q\);

-- Location: FF_X22_Y5_N27
\fifo_transmiter_map|array_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][6]~q\);

-- Location: LCCOMB_X22_Y5_N26
\transmiter_map|Selector10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[2][6]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(2))))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\fifo_transmiter_map|array_reg[0][6]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[2][6]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[0][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(2),
	combout => \transmiter_map|Selector10~14_combout\);

-- Location: FF_X22_Y5_N13
\fifo_transmiter_map|array_reg[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][6]~q\);

-- Location: LCCOMB_X26_Y6_N8
\fifo_transmiter_map|array_reg[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[4][6]~feeder_combout\);

-- Location: FF_X26_Y6_N9
\fifo_transmiter_map|array_reg[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][6]~q\);

-- Location: LCCOMB_X22_Y5_N12
\transmiter_map|Selector10~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~15_combout\ = (\transmiter_map|Selector10~14_combout\ & (((\fifo_transmiter_map|array_reg[6][6]~q\)) # (!\fifo_transmiter_map|rd_ptr_reg\(2)))) # (!\transmiter_map|Selector10~14_combout\ & (\fifo_transmiter_map|rd_ptr_reg\(2) & 
-- ((\fifo_transmiter_map|array_reg[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector10~14_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[6][6]~q\,
	datad => \fifo_transmiter_map|array_reg[4][6]~q\,
	combout => \transmiter_map|Selector10~15_combout\);

-- Location: FF_X21_Y7_N23
\fifo_transmiter_map|array_reg[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][6]~q\);

-- Location: LCCOMB_X24_Y3_N18
\fifo_transmiter_map|array_reg[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[3][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[3][6]~feeder_combout\);

-- Location: FF_X24_Y3_N19
\fifo_transmiter_map|array_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][6]~q\);

-- Location: LCCOMB_X21_Y6_N24
\fifo_transmiter_map|array_reg[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[5][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[5][6]~feeder_combout\);

-- Location: FF_X21_Y6_N25
\fifo_transmiter_map|array_reg[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[5][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][6]~q\);

-- Location: FF_X21_Y7_N11
\fifo_transmiter_map|array_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][6]~q\);

-- Location: LCCOMB_X21_Y7_N10
\transmiter_map|Selector10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|array_reg[5][6]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|array_reg[1][6]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[5][6]~q\,
	datac => \fifo_transmiter_map|array_reg[1][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector10~12_combout\);

-- Location: LCCOMB_X22_Y2_N20
\transmiter_map|Selector10~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~13_combout\ = (\transmiter_map|Selector10~12_combout\ & ((\fifo_transmiter_map|array_reg[7][6]~q\) # ((!\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\transmiter_map|Selector10~12_combout\ & 
-- (((\fifo_transmiter_map|array_reg[3][6]~q\ & \fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[7][6]~q\,
	datab => \fifo_transmiter_map|array_reg[3][6]~q\,
	datac => \transmiter_map|Selector10~12_combout\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector10~13_combout\);

-- Location: LCCOMB_X22_Y2_N14
\transmiter_map|Selector10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3)) # ((\transmiter_map|Selector10~13_combout\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (!\fifo_transmiter_map|rd_ptr_reg\(3) & 
-- (\transmiter_map|Selector10~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \transmiter_map|Selector10~15_combout\,
	datad => \transmiter_map|Selector10~13_combout\,
	combout => \transmiter_map|Selector10~16_combout\);

-- Location: FF_X21_Y4_N5
\fifo_transmiter_map|array_reg[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][6]~q\);

-- Location: FF_X21_Y6_N23
\fifo_transmiter_map|array_reg[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][6]~q\);

-- Location: LCCOMB_X21_Y3_N22
\fifo_transmiter_map|array_reg[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[10][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[10][6]~feeder_combout\);

-- Location: FF_X21_Y3_N23
\fifo_transmiter_map|array_reg[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[10][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][6]~q\);

-- Location: FF_X21_Y4_N27
\fifo_transmiter_map|array_reg[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][6]~q\);

-- Location: LCCOMB_X21_Y4_N26
\transmiter_map|Selector10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[10][6]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[10][6]~q\,
	datac => \fifo_transmiter_map|array_reg[8][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector10~10_combout\);

-- Location: LCCOMB_X21_Y6_N22
\transmiter_map|Selector10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~11_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector10~10_combout\ & (\fifo_transmiter_map|array_reg[14][6]~q\)) # (!\transmiter_map|Selector10~10_combout\ & 
-- ((\fifo_transmiter_map|array_reg[12][6]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector10~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[14][6]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[12][6]~q\,
	datad => \transmiter_map|Selector10~10_combout\,
	combout => \transmiter_map|Selector10~11_combout\);

-- Location: LCCOMB_X22_Y2_N24
\transmiter_map|Selector10~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~19_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector10~16_combout\ & (\transmiter_map|Selector10~18_combout\)) # (!\transmiter_map|Selector10~16_combout\ & ((\transmiter_map|Selector10~11_combout\))))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector10~18_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \transmiter_map|Selector10~16_combout\,
	datad => \transmiter_map|Selector10~11_combout\,
	combout => \transmiter_map|Selector10~19_combout\);

-- Location: LCCOMB_X24_Y5_N18
\fifo_transmiter_map|array_reg[30][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[30][6]~feeder_combout\);

-- Location: FF_X24_Y5_N19
\fifo_transmiter_map|array_reg[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][6]~q\);

-- Location: FF_X25_Y5_N11
\fifo_transmiter_map|array_reg[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][6]~q\);

-- Location: LCCOMB_X26_Y5_N28
\fifo_transmiter_map|array_reg[23][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[23][6]~feeder_combout\);

-- Location: FF_X26_Y5_N29
\fifo_transmiter_map|array_reg[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][6]~q\);

-- Location: FF_X25_Y5_N21
\fifo_transmiter_map|array_reg[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][6]~q\);

-- Location: LCCOMB_X25_Y5_N20
\transmiter_map|Selector10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[23][6]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[22][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|array_reg[23][6]~q\,
	datac => \fifo_transmiter_map|array_reg[22][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector10~7_combout\);

-- Location: LCCOMB_X25_Y5_N10
\transmiter_map|Selector10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~8_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector10~7_combout\ & ((\fifo_transmiter_map|array_reg[31][6]~q\))) # (!\transmiter_map|Selector10~7_combout\ & 
-- (\fifo_transmiter_map|array_reg[30][6]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|array_reg[30][6]~q\,
	datac => \fifo_transmiter_map|array_reg[31][6]~q\,
	datad => \transmiter_map|Selector10~7_combout\,
	combout => \transmiter_map|Selector10~8_combout\);

-- Location: FF_X26_Y3_N9
\fifo_transmiter_map|array_reg[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][6]~q\);

-- Location: LCCOMB_X25_Y3_N24
\fifo_transmiter_map|array_reg[26][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[26][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[26][6]~feeder_combout\);

-- Location: FF_X25_Y3_N25
\fifo_transmiter_map|array_reg[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[26][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][6]~q\);

-- Location: LCCOMB_X26_Y3_N8
\transmiter_map|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|rd_ptr_reg\(3))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[26][6]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[18][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][6]~q\,
	datad => \fifo_transmiter_map|array_reg[26][6]~q\,
	combout => \transmiter_map|Selector10~0_combout\);

-- Location: FF_X25_Y3_N31
\fifo_transmiter_map|array_reg[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][6]~q\);

-- Location: FF_X26_Y3_N23
\fifo_transmiter_map|array_reg[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][6]~q\);

-- Location: LCCOMB_X25_Y3_N30
\transmiter_map|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector10~0_combout\ & (\fifo_transmiter_map|array_reg[27][6]~q\)) # (!\transmiter_map|Selector10~0_combout\ & 
-- ((\fifo_transmiter_map|array_reg[19][6]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (\transmiter_map|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \transmiter_map|Selector10~0_combout\,
	datac => \fifo_transmiter_map|array_reg[27][6]~q\,
	datad => \fifo_transmiter_map|array_reg[19][6]~q\,
	combout => \transmiter_map|Selector10~1_combout\);

-- Location: FF_X24_Y4_N5
\fifo_transmiter_map|array_reg[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][6]~q\);

-- Location: LCCOMB_X24_Y4_N8
\fifo_transmiter_map|array_reg[24][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[24][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[24][6]~feeder_combout\);

-- Location: FF_X24_Y4_N9
\fifo_transmiter_map|array_reg[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[24][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][6]~q\);

-- Location: FF_X23_Y4_N15
\fifo_transmiter_map|array_reg[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][6]~q\);

-- Location: LCCOMB_X23_Y4_N14
\transmiter_map|Selector10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[24][6]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[16][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[24][6]~q\,
	datac => \fifo_transmiter_map|array_reg[16][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector10~4_combout\);

-- Location: FF_X23_Y4_N9
\fifo_transmiter_map|array_reg[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][6]~q\);

-- Location: LCCOMB_X23_Y4_N8
\transmiter_map|Selector10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~5_combout\ = (\transmiter_map|Selector10~4_combout\ & (((\fifo_transmiter_map|array_reg[25][6]~q\) # (!\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\transmiter_map|Selector10~4_combout\ & (\fifo_transmiter_map|array_reg[17][6]~q\ 
-- & ((\fifo_transmiter_map|rd_ptr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[17][6]~q\,
	datab => \transmiter_map|Selector10~4_combout\,
	datac => \fifo_transmiter_map|array_reg[25][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector10~5_combout\);

-- Location: LCCOMB_X21_Y5_N20
\fifo_transmiter_map|array_reg[28][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[28][6]~feeder_combout\);

-- Location: FF_X21_Y5_N21
\fifo_transmiter_map|array_reg[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][6]~q\);

-- Location: FF_X23_Y5_N27
\fifo_transmiter_map|array_reg[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][6]~q\);

-- Location: LCCOMB_X24_Y6_N12
\fifo_transmiter_map|array_reg[21][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][6]~feeder_combout\ = \receiver_map|d_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(6),
	combout => \fifo_transmiter_map|array_reg[21][6]~feeder_combout\);

-- Location: FF_X24_Y6_N13
\fifo_transmiter_map|array_reg[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][6]~q\);

-- Location: FF_X23_Y5_N21
\fifo_transmiter_map|array_reg[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][6]~q\);

-- Location: LCCOMB_X23_Y5_N20
\transmiter_map|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[21][6]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|array_reg[20][6]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[21][6]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[20][6]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector10~2_combout\);

-- Location: LCCOMB_X23_Y5_N26
\transmiter_map|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector10~2_combout\ & ((\fifo_transmiter_map|array_reg[29][6]~q\))) # (!\transmiter_map|Selector10~2_combout\ & 
-- (\fifo_transmiter_map|array_reg[28][6]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[28][6]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[29][6]~q\,
	datad => \transmiter_map|Selector10~2_combout\,
	combout => \transmiter_map|Selector10~3_combout\);

-- Location: LCCOMB_X22_Y2_N0
\transmiter_map|Selector10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & (((\fifo_transmiter_map|rd_ptr_reg\(2))))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector10~3_combout\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(2) & (\transmiter_map|Selector10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \transmiter_map|Selector10~5_combout\,
	datac => \fifo_transmiter_map|rd_ptr_reg\(2),
	datad => \transmiter_map|Selector10~3_combout\,
	combout => \transmiter_map|Selector10~6_combout\);

-- Location: LCCOMB_X22_Y2_N6
\transmiter_map|Selector10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector10~6_combout\ & (\transmiter_map|Selector10~8_combout\)) # (!\transmiter_map|Selector10~6_combout\ & ((\transmiter_map|Selector10~1_combout\))))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector10~8_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector10~1_combout\,
	datad => \transmiter_map|Selector10~6_combout\,
	combout => \transmiter_map|Selector10~9_combout\);

-- Location: LCCOMB_X22_Y2_N16
\transmiter_map|Selector10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector10~20_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(4) & ((\transmiter_map|Selector10~9_combout\))) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & (\transmiter_map|Selector10~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(4),
	datab => \transmiter_map|Selector10~19_combout\,
	datad => \transmiter_map|Selector10~9_combout\,
	combout => \transmiter_map|Selector10~20_combout\);

-- Location: FF_X25_Y3_N29
\fifo_transmiter_map|array_reg[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][5]~q\);

-- Location: FF_X25_Y3_N1
\fifo_transmiter_map|array_reg[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][5]~q\);

-- Location: LCCOMB_X26_Y3_N30
\fifo_transmiter_map|array_reg[19][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[19][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[19][5]~feeder_combout\);

-- Location: FF_X26_Y3_N31
\fifo_transmiter_map|array_reg[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[19][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][5]~q\);

-- Location: FF_X26_Y3_N17
\fifo_transmiter_map|array_reg[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][5]~q\);

-- Location: LCCOMB_X26_Y3_N16
\transmiter_map|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[19][5]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[18][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[19][5]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][5]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector11~0_combout\);

-- Location: LCCOMB_X25_Y3_N0
\transmiter_map|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector11~0_combout\ & (\fifo_transmiter_map|array_reg[27][5]~q\)) # (!\transmiter_map|Selector11~0_combout\ & 
-- ((\fifo_transmiter_map|array_reg[26][5]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[27][5]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[26][5]~q\,
	datad => \transmiter_map|Selector11~0_combout\,
	combout => \transmiter_map|Selector11~1_combout\);

-- Location: LCCOMB_X26_Y5_N6
\fifo_transmiter_map|array_reg[23][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[23][5]~feeder_combout\);

-- Location: FF_X26_Y5_N7
\fifo_transmiter_map|array_reg[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][5]~q\);

-- Location: LCCOMB_X24_Y5_N24
\fifo_transmiter_map|array_reg[30][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[30][5]~feeder_combout\);

-- Location: FF_X24_Y5_N25
\fifo_transmiter_map|array_reg[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][5]~q\);

-- Location: FF_X25_Y5_N9
\fifo_transmiter_map|array_reg[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][5]~q\);

-- Location: LCCOMB_X25_Y5_N8
\transmiter_map|Selector11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[30][5]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|array_reg[22][5]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|array_reg[30][5]~q\,
	datac => \fifo_transmiter_map|array_reg[22][5]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector11~7_combout\);

-- Location: FF_X25_Y5_N31
\fifo_transmiter_map|array_reg[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][5]~q\);

-- Location: LCCOMB_X25_Y5_N30
\transmiter_map|Selector11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~8_combout\ = (\transmiter_map|Selector11~7_combout\ & (((\fifo_transmiter_map|array_reg[31][5]~q\) # (!\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\transmiter_map|Selector11~7_combout\ & (\fifo_transmiter_map|array_reg[23][5]~q\ 
-- & ((\fifo_transmiter_map|rd_ptr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[23][5]~q\,
	datab => \transmiter_map|Selector11~7_combout\,
	datac => \fifo_transmiter_map|array_reg[31][5]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector11~8_combout\);

-- Location: LCCOMB_X24_Y6_N22
\fifo_transmiter_map|array_reg[21][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[21][5]~feeder_combout\);

-- Location: FF_X24_Y6_N23
\fifo_transmiter_map|array_reg[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][5]~q\);

-- Location: FF_X22_Y6_N5
\fifo_transmiter_map|array_reg[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][5]~q\);

-- Location: LCCOMB_X21_Y5_N22
\fifo_transmiter_map|array_reg[28][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[28][5]~feeder_combout\);

-- Location: FF_X21_Y5_N23
\fifo_transmiter_map|array_reg[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][5]~q\);

-- Location: FF_X22_Y6_N3
\fifo_transmiter_map|array_reg[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][5]~q\);

-- Location: LCCOMB_X22_Y6_N2
\transmiter_map|Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[28][5]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[20][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[28][5]~q\,
	datac => \fifo_transmiter_map|array_reg[20][5]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector11~2_combout\);

-- Location: LCCOMB_X22_Y6_N4
\transmiter_map|Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector11~2_combout\ & ((\fifo_transmiter_map|array_reg[29][5]~q\))) # (!\transmiter_map|Selector11~2_combout\ & 
-- (\fifo_transmiter_map|array_reg[21][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[21][5]~q\,
	datac => \fifo_transmiter_map|array_reg[29][5]~q\,
	datad => \transmiter_map|Selector11~2_combout\,
	combout => \transmiter_map|Selector11~3_combout\);

-- Location: FF_X24_Y4_N19
\fifo_transmiter_map|array_reg[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][5]~q\);

-- Location: FF_X23_Y2_N7
\fifo_transmiter_map|array_reg[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][5]~q\);

-- Location: FF_X23_Y4_N21
\fifo_transmiter_map|array_reg[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][5]~q\);

-- Location: FF_X24_Y4_N15
\fifo_transmiter_map|array_reg[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][5]~q\);

-- Location: LCCOMB_X24_Y4_N14
\transmiter_map|Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[17][5]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[16][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[16][5]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[17][5]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector11~4_combout\);

-- Location: LCCOMB_X23_Y2_N6
\transmiter_map|Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~5_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector11~4_combout\ & ((\fifo_transmiter_map|array_reg[25][5]~q\))) # (!\transmiter_map|Selector11~4_combout\ & 
-- (\fifo_transmiter_map|array_reg[24][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[24][5]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[25][5]~q\,
	datad => \transmiter_map|Selector11~4_combout\,
	combout => \transmiter_map|Selector11~5_combout\);

-- Location: LCCOMB_X22_Y2_N2
\transmiter_map|Selector11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|rd_ptr_reg\(2))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2) & (\transmiter_map|Selector11~3_combout\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector11~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \transmiter_map|Selector11~3_combout\,
	datad => \transmiter_map|Selector11~5_combout\,
	combout => \transmiter_map|Selector11~6_combout\);

-- Location: LCCOMB_X22_Y2_N12
\transmiter_map|Selector11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector11~6_combout\ & ((\transmiter_map|Selector11~8_combout\))) # (!\transmiter_map|Selector11~6_combout\ & (\transmiter_map|Selector11~1_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector11~1_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector11~8_combout\,
	datad => \transmiter_map|Selector11~6_combout\,
	combout => \transmiter_map|Selector11~9_combout\);

-- Location: LCCOMB_X21_Y3_N8
\fifo_transmiter_map|array_reg[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[10][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[10][5]~feeder_combout\);

-- Location: FF_X21_Y3_N9
\fifo_transmiter_map|array_reg[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[10][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][5]~q\);

-- Location: FF_X21_Y4_N15
\fifo_transmiter_map|array_reg[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][5]~q\);

-- Location: FF_X21_Y4_N17
\fifo_transmiter_map|array_reg[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][5]~q\);

-- Location: LCCOMB_X21_Y6_N16
\fifo_transmiter_map|array_reg[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[12][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[12][5]~feeder_combout\);

-- Location: FF_X21_Y6_N17
\fifo_transmiter_map|array_reg[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[12][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][5]~q\);

-- Location: LCCOMB_X21_Y4_N16
\transmiter_map|Selector11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\fifo_transmiter_map|array_reg[12][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\fifo_transmiter_map|array_reg[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[8][5]~q\,
	datad => \fifo_transmiter_map|array_reg[12][5]~q\,
	combout => \transmiter_map|Selector11~12_combout\);

-- Location: LCCOMB_X21_Y4_N14
\transmiter_map|Selector11~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~13_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector11~12_combout\ & ((\fifo_transmiter_map|array_reg[14][5]~q\))) # (!\transmiter_map|Selector11~12_combout\ & 
-- (\fifo_transmiter_map|array_reg[10][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[10][5]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[14][5]~q\,
	datad => \transmiter_map|Selector11~12_combout\,
	combout => \transmiter_map|Selector11~13_combout\);

-- Location: LCCOMB_X26_Y6_N22
\fifo_transmiter_map|array_reg[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[4][5]~feeder_combout\);

-- Location: FF_X26_Y6_N23
\fifo_transmiter_map|array_reg[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][5]~q\);

-- Location: FF_X22_Y5_N29
\fifo_transmiter_map|array_reg[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][5]~q\);

-- Location: FF_X22_Y5_N19
\fifo_transmiter_map|array_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][5]~q\);

-- Location: FF_X23_Y7_N3
\fifo_transmiter_map|array_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][5]~q\);

-- Location: LCCOMB_X22_Y5_N18
\transmiter_map|Selector11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2)) # ((\fifo_transmiter_map|array_reg[2][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (!\fifo_transmiter_map|rd_ptr_reg\(2) & 
-- (\fifo_transmiter_map|array_reg[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[0][5]~q\,
	datad => \fifo_transmiter_map|array_reg[2][5]~q\,
	combout => \transmiter_map|Selector11~14_combout\);

-- Location: LCCOMB_X22_Y5_N28
\transmiter_map|Selector11~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~15_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector11~14_combout\ & ((\fifo_transmiter_map|array_reg[6][5]~q\))) # (!\transmiter_map|Selector11~14_combout\ & 
-- (\fifo_transmiter_map|array_reg[4][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[4][5]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[6][5]~q\,
	datad => \transmiter_map|Selector11~14_combout\,
	combout => \transmiter_map|Selector11~15_combout\);

-- Location: LCCOMB_X22_Y2_N26
\transmiter_map|Selector11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|rd_ptr_reg\(3))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\transmiter_map|Selector11~13_combout\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector11~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \transmiter_map|Selector11~13_combout\,
	datad => \transmiter_map|Selector11~15_combout\,
	combout => \transmiter_map|Selector11~16_combout\);

-- Location: LCCOMB_X26_Y4_N10
\fifo_transmiter_map|array_reg[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[11][5]~feeder_combout\);

-- Location: FF_X26_Y4_N11
\fifo_transmiter_map|array_reg[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][5]~q\);

-- Location: FF_X25_Y4_N13
\fifo_transmiter_map|array_reg[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][5]~q\);

-- Location: LCCOMB_X22_Y4_N26
\fifo_transmiter_map|array_reg[13][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[13][5]~feeder_combout\);

-- Location: FF_X22_Y4_N27
\fifo_transmiter_map|array_reg[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][5]~q\);

-- Location: FF_X25_Y4_N11
\fifo_transmiter_map|array_reg[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][5]~q\);

-- Location: LCCOMB_X25_Y4_N10
\transmiter_map|Selector11~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|array_reg[13][5]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|array_reg[9][5]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[13][5]~q\,
	datac => \fifo_transmiter_map|array_reg[9][5]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector11~17_combout\);

-- Location: LCCOMB_X25_Y4_N12
\transmiter_map|Selector11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector11~17_combout\ & ((\fifo_transmiter_map|array_reg[15][5]~q\))) # (!\transmiter_map|Selector11~17_combout\ & 
-- (\fifo_transmiter_map|array_reg[11][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector11~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|array_reg[11][5]~q\,
	datac => \fifo_transmiter_map|array_reg[15][5]~q\,
	datad => \transmiter_map|Selector11~17_combout\,
	combout => \transmiter_map|Selector11~18_combout\);

-- Location: LCCOMB_X21_Y6_N26
\fifo_transmiter_map|array_reg[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[5][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[5][5]~feeder_combout\);

-- Location: FF_X21_Y6_N27
\fifo_transmiter_map|array_reg[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[5][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][5]~q\);

-- Location: FF_X21_Y7_N9
\fifo_transmiter_map|array_reg[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][5]~q\);

-- Location: FF_X21_Y7_N13
\fifo_transmiter_map|array_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][5]~q\);

-- Location: LCCOMB_X24_Y3_N8
\fifo_transmiter_map|array_reg[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[3][5]~feeder_combout\ = \receiver_map|d_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(5),
	combout => \fifo_transmiter_map|array_reg[3][5]~feeder_combout\);

-- Location: FF_X24_Y3_N9
\fifo_transmiter_map|array_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][5]~q\);

-- Location: LCCOMB_X21_Y7_N12
\transmiter_map|Selector11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(1))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[3][5]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[1][5]~q\,
	datad => \fifo_transmiter_map|array_reg[3][5]~q\,
	combout => \transmiter_map|Selector11~10_combout\);

-- Location: LCCOMB_X21_Y7_N14
\transmiter_map|Selector11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~11_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector11~10_combout\ & ((\fifo_transmiter_map|array_reg[7][5]~q\))) # (!\transmiter_map|Selector11~10_combout\ & 
-- (\fifo_transmiter_map|array_reg[5][5]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[5][5]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[7][5]~q\,
	datad => \transmiter_map|Selector11~10_combout\,
	combout => \transmiter_map|Selector11~11_combout\);

-- Location: LCCOMB_X22_Y2_N28
\transmiter_map|Selector11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~19_combout\ = (\transmiter_map|Selector11~16_combout\ & (((\transmiter_map|Selector11~18_combout\)) # (!\fifo_transmiter_map|rd_ptr_reg\(0)))) # (!\transmiter_map|Selector11~16_combout\ & (\fifo_transmiter_map|rd_ptr_reg\(0) & 
-- ((\transmiter_map|Selector11~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector11~16_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \transmiter_map|Selector11~18_combout\,
	datad => \transmiter_map|Selector11~11_combout\,
	combout => \transmiter_map|Selector11~19_combout\);

-- Location: LCCOMB_X22_Y2_N22
\transmiter_map|Selector11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector11~20_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(4) & (\transmiter_map|Selector11~9_combout\)) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & ((\transmiter_map|Selector11~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector11~9_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(4),
	datad => \transmiter_map|Selector11~19_combout\,
	combout => \transmiter_map|Selector11~20_combout\);

-- Location: LCCOMB_X25_Y3_N4
\fifo_transmiter_map|array_reg[27][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[27][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[27][4]~feeder_combout\);

-- Location: FF_X25_Y3_N5
\fifo_transmiter_map|array_reg[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[27][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][4]~q\);

-- Location: FF_X26_Y3_N15
\fifo_transmiter_map|array_reg[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][4]~q\);

-- Location: FF_X26_Y3_N13
\fifo_transmiter_map|array_reg[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][4]~q\);

-- Location: LCCOMB_X25_Y3_N18
\fifo_transmiter_map|array_reg[26][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[26][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[26][4]~feeder_combout\);

-- Location: FF_X25_Y3_N19
\fifo_transmiter_map|array_reg[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[26][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][4]~q\);

-- Location: LCCOMB_X26_Y3_N12
\transmiter_map|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|rd_ptr_reg\(3))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[26][4]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[18][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][4]~q\,
	datad => \fifo_transmiter_map|array_reg[26][4]~q\,
	combout => \transmiter_map|Selector12~0_combout\);

-- Location: LCCOMB_X26_Y3_N14
\transmiter_map|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector12~0_combout\ & (\fifo_transmiter_map|array_reg[27][4]~q\)) # (!\transmiter_map|Selector12~0_combout\ & 
-- ((\fifo_transmiter_map|array_reg[19][4]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[27][4]~q\,
	datac => \fifo_transmiter_map|array_reg[19][4]~q\,
	datad => \transmiter_map|Selector12~0_combout\,
	combout => \transmiter_map|Selector12~1_combout\);

-- Location: LCCOMB_X24_Y5_N30
\fifo_transmiter_map|array_reg[30][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[30][4]~feeder_combout\);

-- Location: FF_X24_Y5_N31
\fifo_transmiter_map|array_reg[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][4]~q\);

-- Location: FF_X25_Y5_N19
\fifo_transmiter_map|array_reg[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][4]~q\);

-- Location: LCCOMB_X26_Y5_N16
\fifo_transmiter_map|array_reg[23][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[23][4]~feeder_combout\);

-- Location: FF_X26_Y5_N17
\fifo_transmiter_map|array_reg[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][4]~q\);

-- Location: FF_X25_Y5_N17
\fifo_transmiter_map|array_reg[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][4]~q\);

-- Location: LCCOMB_X25_Y5_N16
\transmiter_map|Selector12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[23][4]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[22][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[23][4]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[22][4]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector12~7_combout\);

-- Location: LCCOMB_X25_Y5_N18
\transmiter_map|Selector12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~8_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector12~7_combout\ & ((\fifo_transmiter_map|array_reg[31][4]~q\))) # (!\transmiter_map|Selector12~7_combout\ & 
-- (\fifo_transmiter_map|array_reg[30][4]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|array_reg[30][4]~q\,
	datac => \fifo_transmiter_map|array_reg[31][4]~q\,
	datad => \transmiter_map|Selector12~7_combout\,
	combout => \transmiter_map|Selector12~8_combout\);

-- Location: LCCOMB_X24_Y4_N16
\fifo_transmiter_map|array_reg[17][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[17][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[17][4]~feeder_combout\);

-- Location: FF_X24_Y4_N17
\fifo_transmiter_map|array_reg[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[17][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][4]~q\);

-- Location: FF_X23_Y4_N25
\fifo_transmiter_map|array_reg[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][4]~q\);

-- Location: LCCOMB_X24_Y4_N22
\fifo_transmiter_map|array_reg[24][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[24][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[24][4]~feeder_combout\);

-- Location: FF_X24_Y4_N23
\fifo_transmiter_map|array_reg[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[24][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][4]~q\);

-- Location: FF_X23_Y4_N11
\fifo_transmiter_map|array_reg[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][4]~q\);

-- Location: LCCOMB_X23_Y4_N10
\transmiter_map|Selector12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[24][4]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[16][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[24][4]~q\,
	datac => \fifo_transmiter_map|array_reg[16][4]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector12~4_combout\);

-- Location: LCCOMB_X23_Y4_N24
\transmiter_map|Selector12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~5_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector12~4_combout\ & ((\fifo_transmiter_map|array_reg[25][4]~q\))) # (!\transmiter_map|Selector12~4_combout\ & 
-- (\fifo_transmiter_map|array_reg[17][4]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[17][4]~q\,
	datac => \fifo_transmiter_map|array_reg[25][4]~q\,
	datad => \transmiter_map|Selector12~4_combout\,
	combout => \transmiter_map|Selector12~5_combout\);

-- Location: LCCOMB_X21_Y5_N28
\fifo_transmiter_map|array_reg[28][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[28][4]~feeder_combout\);

-- Location: FF_X21_Y5_N29
\fifo_transmiter_map|array_reg[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][4]~q\);

-- Location: FF_X23_Y5_N23
\fifo_transmiter_map|array_reg[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][4]~q\);

-- Location: FF_X23_Y5_N1
\fifo_transmiter_map|array_reg[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][4]~q\);

-- Location: LCCOMB_X24_Y6_N20
\fifo_transmiter_map|array_reg[21][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[21][4]~feeder_combout\);

-- Location: FF_X24_Y6_N21
\fifo_transmiter_map|array_reg[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][4]~q\);

-- Location: LCCOMB_X23_Y5_N0
\transmiter_map|Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|rd_ptr_reg\(0))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[21][4]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[20][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[20][4]~q\,
	datad => \fifo_transmiter_map|array_reg[21][4]~q\,
	combout => \transmiter_map|Selector12~2_combout\);

-- Location: LCCOMB_X23_Y5_N22
\transmiter_map|Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector12~2_combout\ & ((\fifo_transmiter_map|array_reg[29][4]~q\))) # (!\transmiter_map|Selector12~2_combout\ & 
-- (\fifo_transmiter_map|array_reg[28][4]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[28][4]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[29][4]~q\,
	datad => \transmiter_map|Selector12~2_combout\,
	combout => \transmiter_map|Selector12~3_combout\);

-- Location: LCCOMB_X22_Y6_N18
\transmiter_map|Selector12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\transmiter_map|Selector12~3_combout\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\transmiter_map|Selector12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector12~5_combout\,
	datad => \transmiter_map|Selector12~3_combout\,
	combout => \transmiter_map|Selector12~6_combout\);

-- Location: LCCOMB_X22_Y6_N20
\transmiter_map|Selector12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector12~6_combout\ & ((\transmiter_map|Selector12~8_combout\))) # (!\transmiter_map|Selector12~6_combout\ & (\transmiter_map|Selector12~1_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector12~1_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector12~8_combout\,
	datad => \transmiter_map|Selector12~6_combout\,
	combout => \transmiter_map|Selector12~9_combout\);

-- Location: LCCOMB_X21_Y4_N10
\fifo_transmiter_map|array_reg[14][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[14][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[14][4]~feeder_combout\);

-- Location: FF_X21_Y4_N11
\fifo_transmiter_map|array_reg[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[14][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][4]~q\);

-- Location: FF_X21_Y6_N31
\fifo_transmiter_map|array_reg[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][4]~q\);

-- Location: FF_X21_Y4_N1
\fifo_transmiter_map|array_reg[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][4]~q\);

-- Location: LCCOMB_X21_Y3_N30
\fifo_transmiter_map|array_reg[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[10][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[10][4]~feeder_combout\);

-- Location: FF_X21_Y3_N31
\fifo_transmiter_map|array_reg[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[10][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][4]~q\);

-- Location: LCCOMB_X21_Y4_N0
\transmiter_map|Selector12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(1))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[10][4]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[8][4]~q\,
	datad => \fifo_transmiter_map|array_reg[10][4]~q\,
	combout => \transmiter_map|Selector12~10_combout\);

-- Location: LCCOMB_X21_Y6_N30
\transmiter_map|Selector12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~11_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector12~10_combout\ & (\fifo_transmiter_map|array_reg[14][4]~q\)) # (!\transmiter_map|Selector12~10_combout\ & 
-- ((\fifo_transmiter_map|array_reg[12][4]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[14][4]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[12][4]~q\,
	datad => \transmiter_map|Selector12~10_combout\,
	combout => \transmiter_map|Selector12~11_combout\);

-- Location: LCCOMB_X26_Y6_N12
\fifo_transmiter_map|array_reg[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[4][4]~feeder_combout\);

-- Location: FF_X26_Y6_N13
\fifo_transmiter_map|array_reg[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][4]~q\);

-- Location: FF_X22_Y5_N9
\fifo_transmiter_map|array_reg[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][4]~q\);

-- Location: FF_X23_Y7_N21
\fifo_transmiter_map|array_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][4]~q\);

-- Location: FF_X22_Y5_N7
\fifo_transmiter_map|array_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][4]~q\);

-- Location: LCCOMB_X22_Y5_N6
\transmiter_map|Selector12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[2][4]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[2][4]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[0][4]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector12~14_combout\);

-- Location: LCCOMB_X22_Y5_N8
\transmiter_map|Selector12~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~15_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector12~14_combout\ & ((\fifo_transmiter_map|array_reg[6][4]~q\))) # (!\transmiter_map|Selector12~14_combout\ & 
-- (\fifo_transmiter_map|array_reg[4][4]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector12~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[4][4]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[6][4]~q\,
	datad => \transmiter_map|Selector12~14_combout\,
	combout => \transmiter_map|Selector12~15_combout\);

-- Location: LCCOMB_X24_Y3_N6
\fifo_transmiter_map|array_reg[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[3][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[3][4]~feeder_combout\);

-- Location: FF_X24_Y3_N7
\fifo_transmiter_map|array_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][4]~q\);

-- Location: FF_X21_Y7_N19
\fifo_transmiter_map|array_reg[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][4]~q\);

-- Location: LCCOMB_X21_Y6_N0
\fifo_transmiter_map|array_reg[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[5][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[5][4]~feeder_combout\);

-- Location: FF_X21_Y6_N1
\fifo_transmiter_map|array_reg[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[5][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][4]~q\);

-- Location: FF_X21_Y7_N21
\fifo_transmiter_map|array_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][4]~q\);

-- Location: LCCOMB_X21_Y7_N20
\transmiter_map|Selector12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|array_reg[5][4]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|array_reg[1][4]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[5][4]~q\,
	datac => \fifo_transmiter_map|array_reg[1][4]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector12~12_combout\);

-- Location: LCCOMB_X21_Y7_N18
\transmiter_map|Selector12~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~13_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector12~12_combout\ & ((\fifo_transmiter_map|array_reg[7][4]~q\))) # (!\transmiter_map|Selector12~12_combout\ & 
-- (\fifo_transmiter_map|array_reg[3][4]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|array_reg[3][4]~q\,
	datac => \fifo_transmiter_map|array_reg[7][4]~q\,
	datad => \transmiter_map|Selector12~12_combout\,
	combout => \transmiter_map|Selector12~13_combout\);

-- Location: LCCOMB_X22_Y5_N14
\transmiter_map|Selector12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector12~13_combout\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (\transmiter_map|Selector12~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \transmiter_map|Selector12~15_combout\,
	datac => \fifo_transmiter_map|rd_ptr_reg\(0),
	datad => \transmiter_map|Selector12~13_combout\,
	combout => \transmiter_map|Selector12~16_combout\);

-- Location: LCCOMB_X22_Y4_N0
\fifo_transmiter_map|array_reg[13][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[13][4]~feeder_combout\);

-- Location: FF_X22_Y4_N1
\fifo_transmiter_map|array_reg[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][4]~q\);

-- Location: FF_X25_Y4_N1
\fifo_transmiter_map|array_reg[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][4]~q\);

-- Location: LCCOMB_X26_Y4_N8
\fifo_transmiter_map|array_reg[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][4]~feeder_combout\ = \receiver_map|d_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(4),
	combout => \fifo_transmiter_map|array_reg[11][4]~feeder_combout\);

-- Location: FF_X26_Y4_N9
\fifo_transmiter_map|array_reg[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][4]~q\);

-- Location: FF_X25_Y4_N3
\fifo_transmiter_map|array_reg[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][4]~q\);

-- Location: LCCOMB_X25_Y4_N2
\transmiter_map|Selector12~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[11][4]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[9][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[11][4]~q\,
	datac => \fifo_transmiter_map|array_reg[9][4]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector12~17_combout\);

-- Location: LCCOMB_X25_Y4_N0
\transmiter_map|Selector12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector12~17_combout\ & ((\fifo_transmiter_map|array_reg[15][4]~q\))) # (!\transmiter_map|Selector12~17_combout\ & 
-- (\fifo_transmiter_map|array_reg[13][4]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector12~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[13][4]~q\,
	datac => \fifo_transmiter_map|array_reg[15][4]~q\,
	datad => \transmiter_map|Selector12~17_combout\,
	combout => \transmiter_map|Selector12~18_combout\);

-- Location: LCCOMB_X22_Y5_N16
\transmiter_map|Selector12~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~19_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector12~16_combout\ & ((\transmiter_map|Selector12~18_combout\))) # (!\transmiter_map|Selector12~16_combout\ & (\transmiter_map|Selector12~11_combout\)))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \transmiter_map|Selector12~11_combout\,
	datac => \transmiter_map|Selector12~16_combout\,
	datad => \transmiter_map|Selector12~18_combout\,
	combout => \transmiter_map|Selector12~19_combout\);

-- Location: LCCOMB_X22_Y3_N18
\transmiter_map|Selector12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector12~20_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(4) & (\transmiter_map|Selector12~9_combout\)) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & ((\transmiter_map|Selector12~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector12~9_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(4),
	datad => \transmiter_map|Selector12~19_combout\,
	combout => \transmiter_map|Selector12~20_combout\);

-- Location: LCCOMB_X25_Y3_N12
\fifo_transmiter_map|array_reg[27][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[27][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[27][3]~feeder_combout\);

-- Location: FF_X25_Y3_N13
\fifo_transmiter_map|array_reg[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[27][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][3]~q\);

-- Location: FF_X25_Y3_N23
\fifo_transmiter_map|array_reg[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][3]~q\);

-- Location: LCCOMB_X26_Y3_N26
\fifo_transmiter_map|array_reg[19][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[19][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[19][3]~feeder_combout\);

-- Location: FF_X26_Y3_N27
\fifo_transmiter_map|array_reg[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[19][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][3]~q\);

-- Location: FF_X26_Y3_N29
\fifo_transmiter_map|array_reg[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][3]~q\);

-- Location: LCCOMB_X26_Y3_N28
\transmiter_map|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[19][3]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[18][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[19][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][3]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector13~0_combout\);

-- Location: LCCOMB_X25_Y3_N22
\transmiter_map|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector13~0_combout\ & (\fifo_transmiter_map|array_reg[27][3]~q\)) # (!\transmiter_map|Selector13~0_combout\ & 
-- ((\fifo_transmiter_map|array_reg[26][3]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[27][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[26][3]~q\,
	datad => \transmiter_map|Selector13~0_combout\,
	combout => \transmiter_map|Selector13~1_combout\);

-- Location: LCCOMB_X26_Y5_N22
\fifo_transmiter_map|array_reg[23][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[23][3]~feeder_combout\);

-- Location: FF_X26_Y5_N23
\fifo_transmiter_map|array_reg[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][3]~q\);

-- Location: FF_X25_Y5_N7
\fifo_transmiter_map|array_reg[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][3]~q\);

-- Location: LCCOMB_X24_Y5_N8
\fifo_transmiter_map|array_reg[30][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[30][3]~feeder_combout\);

-- Location: FF_X24_Y5_N9
\fifo_transmiter_map|array_reg[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][3]~q\);

-- Location: FF_X25_Y5_N25
\fifo_transmiter_map|array_reg[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][3]~q\);

-- Location: LCCOMB_X25_Y5_N24
\transmiter_map|Selector13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[30][3]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|array_reg[22][3]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[30][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[22][3]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector13~7_combout\);

-- Location: LCCOMB_X25_Y5_N6
\transmiter_map|Selector13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~8_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector13~7_combout\ & ((\fifo_transmiter_map|array_reg[31][3]~q\))) # (!\transmiter_map|Selector13~7_combout\ & 
-- (\fifo_transmiter_map|array_reg[23][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[23][3]~q\,
	datac => \fifo_transmiter_map|array_reg[31][3]~q\,
	datad => \transmiter_map|Selector13~7_combout\,
	combout => \transmiter_map|Selector13~8_combout\);

-- Location: LCCOMB_X24_Y4_N12
\fifo_transmiter_map|array_reg[24][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[24][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[24][3]~feeder_combout\);

-- Location: FF_X24_Y4_N13
\fifo_transmiter_map|array_reg[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[24][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][3]~q\);

-- Location: FF_X23_Y4_N13
\fifo_transmiter_map|array_reg[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][3]~q\);

-- Location: LCCOMB_X24_Y4_N10
\fifo_transmiter_map|array_reg[17][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[17][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[17][3]~feeder_combout\);

-- Location: FF_X24_Y4_N11
\fifo_transmiter_map|array_reg[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[17][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][3]~q\);

-- Location: FF_X23_Y4_N3
\fifo_transmiter_map|array_reg[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][3]~q\);

-- Location: LCCOMB_X23_Y4_N2
\transmiter_map|Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[17][3]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|array_reg[16][3]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[17][3]~q\,
	datac => \fifo_transmiter_map|array_reg[16][3]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector13~4_combout\);

-- Location: LCCOMB_X23_Y4_N12
\transmiter_map|Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~5_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector13~4_combout\ & ((\fifo_transmiter_map|array_reg[25][3]~q\))) # (!\transmiter_map|Selector13~4_combout\ & 
-- (\fifo_transmiter_map|array_reg[24][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[24][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[25][3]~q\,
	datad => \transmiter_map|Selector13~4_combout\,
	combout => \transmiter_map|Selector13~5_combout\);

-- Location: LCCOMB_X24_Y6_N26
\fifo_transmiter_map|array_reg[21][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[21][3]~feeder_combout\);

-- Location: FF_X24_Y6_N27
\fifo_transmiter_map|array_reg[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][3]~q\);

-- Location: FF_X23_Y5_N19
\fifo_transmiter_map|array_reg[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][3]~q\);

-- Location: LCCOMB_X21_Y5_N6
\fifo_transmiter_map|array_reg[28][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[28][3]~feeder_combout\);

-- Location: FF_X21_Y5_N7
\fifo_transmiter_map|array_reg[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][3]~q\);

-- Location: FF_X23_Y5_N25
\fifo_transmiter_map|array_reg[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][3]~q\);

-- Location: LCCOMB_X23_Y5_N24
\transmiter_map|Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[28][3]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[20][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[28][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[20][3]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector13~2_combout\);

-- Location: LCCOMB_X23_Y5_N18
\transmiter_map|Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector13~2_combout\ & ((\fifo_transmiter_map|array_reg[29][3]~q\))) # (!\transmiter_map|Selector13~2_combout\ & 
-- (\fifo_transmiter_map|array_reg[21][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[21][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[29][3]~q\,
	datad => \transmiter_map|Selector13~2_combout\,
	combout => \transmiter_map|Selector13~3_combout\);

-- Location: LCCOMB_X22_Y6_N6
\transmiter_map|Selector13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\transmiter_map|Selector13~3_combout\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\transmiter_map|Selector13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector13~5_combout\,
	datad => \transmiter_map|Selector13~3_combout\,
	combout => \transmiter_map|Selector13~6_combout\);

-- Location: LCCOMB_X22_Y6_N12
\transmiter_map|Selector13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector13~6_combout\ & ((\transmiter_map|Selector13~8_combout\))) # (!\transmiter_map|Selector13~6_combout\ & (\transmiter_map|Selector13~1_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector13~1_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector13~8_combout\,
	datad => \transmiter_map|Selector13~6_combout\,
	combout => \transmiter_map|Selector13~9_combout\);

-- Location: LCCOMB_X26_Y4_N22
\fifo_transmiter_map|array_reg[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[11][3]~feeder_combout\);

-- Location: FF_X26_Y4_N23
\fifo_transmiter_map|array_reg[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][3]~q\);

-- Location: FF_X25_Y4_N5
\fifo_transmiter_map|array_reg[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][3]~q\);

-- Location: LCCOMB_X22_Y4_N22
\fifo_transmiter_map|array_reg[13][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[13][3]~feeder_combout\);

-- Location: FF_X22_Y4_N23
\fifo_transmiter_map|array_reg[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][3]~q\);

-- Location: FF_X25_Y4_N7
\fifo_transmiter_map|array_reg[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][3]~q\);

-- Location: LCCOMB_X25_Y4_N6
\transmiter_map|Selector13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|array_reg[13][3]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|array_reg[9][3]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[13][3]~q\,
	datac => \fifo_transmiter_map|array_reg[9][3]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector13~17_combout\);

-- Location: LCCOMB_X25_Y4_N4
\transmiter_map|Selector13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector13~17_combout\ & ((\fifo_transmiter_map|array_reg[15][3]~q\))) # (!\transmiter_map|Selector13~17_combout\ & 
-- (\fifo_transmiter_map|array_reg[11][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector13~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|array_reg[11][3]~q\,
	datac => \fifo_transmiter_map|array_reg[15][3]~q\,
	datad => \transmiter_map|Selector13~17_combout\,
	combout => \transmiter_map|Selector13~18_combout\);

-- Location: LCCOMB_X26_Y6_N30
\fifo_transmiter_map|array_reg[4][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[4][3]~feeder_combout\);

-- Location: FF_X26_Y6_N31
\fifo_transmiter_map|array_reg[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][3]~q\);

-- Location: FF_X22_Y5_N5
\fifo_transmiter_map|array_reg[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][3]~q\);

-- Location: FF_X22_Y5_N3
\fifo_transmiter_map|array_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][3]~q\);

-- Location: FF_X23_Y7_N25
\fifo_transmiter_map|array_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][3]~q\);

-- Location: LCCOMB_X22_Y5_N2
\transmiter_map|Selector13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2)) # ((\fifo_transmiter_map|array_reg[2][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (!\fifo_transmiter_map|rd_ptr_reg\(2) & 
-- (\fifo_transmiter_map|array_reg[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[0][3]~q\,
	datad => \fifo_transmiter_map|array_reg[2][3]~q\,
	combout => \transmiter_map|Selector13~14_combout\);

-- Location: LCCOMB_X22_Y5_N4
\transmiter_map|Selector13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~15_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector13~14_combout\ & ((\fifo_transmiter_map|array_reg[6][3]~q\))) # (!\transmiter_map|Selector13~14_combout\ & 
-- (\fifo_transmiter_map|array_reg[4][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[4][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[6][3]~q\,
	datad => \transmiter_map|Selector13~14_combout\,
	combout => \transmiter_map|Selector13~15_combout\);

-- Location: LCCOMB_X21_Y3_N0
\fifo_transmiter_map|array_reg[10][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[10][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[10][3]~feeder_combout\);

-- Location: FF_X21_Y3_N1
\fifo_transmiter_map|array_reg[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[10][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][3]~q\);

-- Location: FF_X21_Y4_N19
\fifo_transmiter_map|array_reg[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][3]~q\);

-- Location: FF_X21_Y4_N13
\fifo_transmiter_map|array_reg[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][3]~q\);

-- Location: LCCOMB_X21_Y6_N12
\fifo_transmiter_map|array_reg[12][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[12][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[12][3]~feeder_combout\);

-- Location: FF_X21_Y6_N13
\fifo_transmiter_map|array_reg[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[12][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][3]~q\);

-- Location: LCCOMB_X21_Y4_N12
\transmiter_map|Selector13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\fifo_transmiter_map|array_reg[12][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\fifo_transmiter_map|array_reg[8][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[8][3]~q\,
	datad => \fifo_transmiter_map|array_reg[12][3]~q\,
	combout => \transmiter_map|Selector13~12_combout\);

-- Location: LCCOMB_X21_Y4_N18
\transmiter_map|Selector13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~13_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector13~12_combout\ & ((\fifo_transmiter_map|array_reg[14][3]~q\))) # (!\transmiter_map|Selector13~12_combout\ & 
-- (\fifo_transmiter_map|array_reg[10][3]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|array_reg[10][3]~q\,
	datac => \fifo_transmiter_map|array_reg[14][3]~q\,
	datad => \transmiter_map|Selector13~12_combout\,
	combout => \transmiter_map|Selector13~13_combout\);

-- Location: LCCOMB_X22_Y5_N22
\transmiter_map|Selector13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0)) # ((\transmiter_map|Selector13~13_combout\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (!\fifo_transmiter_map|rd_ptr_reg\(0) & 
-- (\transmiter_map|Selector13~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \transmiter_map|Selector13~15_combout\,
	datad => \transmiter_map|Selector13~13_combout\,
	combout => \transmiter_map|Selector13~16_combout\);

-- Location: LCCOMB_X21_Y7_N6
\fifo_transmiter_map|array_reg[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[7][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[7][3]~feeder_combout\);

-- Location: FF_X21_Y7_N7
\fifo_transmiter_map|array_reg[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[7][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][3]~q\);

-- Location: FF_X21_Y6_N19
\fifo_transmiter_map|array_reg[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][3]~q\);

-- Location: FF_X21_Y7_N25
\fifo_transmiter_map|array_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][3]~q\);

-- Location: LCCOMB_X24_Y3_N20
\fifo_transmiter_map|array_reg[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[3][3]~feeder_combout\ = \receiver_map|d_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(3),
	combout => \fifo_transmiter_map|array_reg[3][3]~feeder_combout\);

-- Location: FF_X24_Y3_N21
\fifo_transmiter_map|array_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[3][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][3]~q\);

-- Location: LCCOMB_X21_Y7_N24
\transmiter_map|Selector13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(1))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[3][3]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[1][3]~q\,
	datad => \fifo_transmiter_map|array_reg[3][3]~q\,
	combout => \transmiter_map|Selector13~10_combout\);

-- Location: LCCOMB_X21_Y6_N18
\transmiter_map|Selector13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~11_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector13~10_combout\ & (\fifo_transmiter_map|array_reg[7][3]~q\)) # (!\transmiter_map|Selector13~10_combout\ & 
-- ((\fifo_transmiter_map|array_reg[5][3]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[7][3]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[5][3]~q\,
	datad => \transmiter_map|Selector13~10_combout\,
	combout => \transmiter_map|Selector13~11_combout\);

-- Location: LCCOMB_X22_Y3_N10
\transmiter_map|Selector13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~19_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector13~16_combout\ & (\transmiter_map|Selector13~18_combout\)) # (!\transmiter_map|Selector13~16_combout\ & ((\transmiter_map|Selector13~11_combout\))))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector13~18_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \transmiter_map|Selector13~16_combout\,
	datad => \transmiter_map|Selector13~11_combout\,
	combout => \transmiter_map|Selector13~19_combout\);

-- Location: LCCOMB_X22_Y3_N14
\transmiter_map|Selector13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector13~20_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(4) & (\transmiter_map|Selector13~9_combout\)) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & ((\transmiter_map|Selector13~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(4),
	datab => \transmiter_map|Selector13~9_combout\,
	datad => \transmiter_map|Selector13~19_combout\,
	combout => \transmiter_map|Selector13~20_combout\);

-- Location: LCCOMB_X21_Y4_N2
\fifo_transmiter_map|array_reg[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[14][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[14][2]~feeder_combout\);

-- Location: FF_X21_Y4_N3
\fifo_transmiter_map|array_reg[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[14][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][2]~q\);

-- Location: FF_X21_Y4_N29
\fifo_transmiter_map|array_reg[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][2]~q\);

-- Location: LCCOMB_X21_Y3_N10
\fifo_transmiter_map|array_reg[10][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[10][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[10][2]~feeder_combout\);

-- Location: FF_X21_Y3_N11
\fifo_transmiter_map|array_reg[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[10][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][2]~q\);

-- Location: LCCOMB_X21_Y4_N28
\transmiter_map|Selector14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(1))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[10][2]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[8][2]~q\,
	datad => \fifo_transmiter_map|array_reg[10][2]~q\,
	combout => \transmiter_map|Selector14~10_combout\);

-- Location: FF_X21_Y6_N21
\fifo_transmiter_map|array_reg[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][2]~q\);

-- Location: LCCOMB_X22_Y6_N14
\transmiter_map|Selector14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~11_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector14~10_combout\ & (\fifo_transmiter_map|array_reg[14][2]~q\)) # (!\transmiter_map|Selector14~10_combout\ & 
-- ((\fifo_transmiter_map|array_reg[12][2]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[14][2]~q\,
	datac => \transmiter_map|Selector14~10_combout\,
	datad => \fifo_transmiter_map|array_reg[12][2]~q\,
	combout => \transmiter_map|Selector14~11_combout\);

-- Location: LCCOMB_X22_Y4_N20
\fifo_transmiter_map|array_reg[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[13][2]~feeder_combout\);

-- Location: FF_X22_Y4_N21
\fifo_transmiter_map|array_reg[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][2]~q\);

-- Location: FF_X25_Y4_N9
\fifo_transmiter_map|array_reg[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][2]~q\);

-- Location: LCCOMB_X26_Y4_N28
\fifo_transmiter_map|array_reg[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[11][2]~feeder_combout\);

-- Location: FF_X26_Y4_N29
\fifo_transmiter_map|array_reg[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][2]~q\);

-- Location: FF_X25_Y4_N19
\fifo_transmiter_map|array_reg[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][2]~q\);

-- Location: LCCOMB_X25_Y4_N18
\transmiter_map|Selector14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[11][2]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[9][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[11][2]~q\,
	datac => \fifo_transmiter_map|array_reg[9][2]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector14~17_combout\);

-- Location: LCCOMB_X25_Y4_N8
\transmiter_map|Selector14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector14~17_combout\ & ((\fifo_transmiter_map|array_reg[15][2]~q\))) # (!\transmiter_map|Selector14~17_combout\ & 
-- (\fifo_transmiter_map|array_reg[13][2]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector14~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[13][2]~q\,
	datac => \fifo_transmiter_map|array_reg[15][2]~q\,
	datad => \transmiter_map|Selector14~17_combout\,
	combout => \transmiter_map|Selector14~18_combout\);

-- Location: LCCOMB_X24_Y3_N10
\fifo_transmiter_map|array_reg[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[3][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[3][2]~feeder_combout\);

-- Location: FF_X24_Y3_N11
\fifo_transmiter_map|array_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][2]~q\);

-- Location: FF_X21_Y7_N3
\fifo_transmiter_map|array_reg[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][2]~q\);

-- Location: LCCOMB_X21_Y6_N2
\fifo_transmiter_map|array_reg[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[5][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[5][2]~feeder_combout\);

-- Location: FF_X21_Y6_N3
\fifo_transmiter_map|array_reg[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[5][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][2]~q\);

-- Location: FF_X21_Y7_N1
\fifo_transmiter_map|array_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][2]~q\);

-- Location: LCCOMB_X21_Y7_N0
\transmiter_map|Selector14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|array_reg[5][2]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|array_reg[1][2]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[5][2]~q\,
	datac => \fifo_transmiter_map|array_reg[1][2]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \transmiter_map|Selector14~12_combout\);

-- Location: LCCOMB_X21_Y7_N2
\transmiter_map|Selector14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~13_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector14~12_combout\ & ((\fifo_transmiter_map|array_reg[7][2]~q\))) # (!\transmiter_map|Selector14~12_combout\ & 
-- (\fifo_transmiter_map|array_reg[3][2]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|array_reg[3][2]~q\,
	datac => \fifo_transmiter_map|array_reg[7][2]~q\,
	datad => \transmiter_map|Selector14~12_combout\,
	combout => \transmiter_map|Selector14~13_combout\);

-- Location: LCCOMB_X26_Y6_N16
\fifo_transmiter_map|array_reg[4][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[4][2]~feeder_combout\);

-- Location: FF_X26_Y6_N17
\fifo_transmiter_map|array_reg[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][2]~q\);

-- Location: FF_X23_Y3_N27
\fifo_transmiter_map|array_reg[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][2]~q\);

-- Location: FF_X23_Y3_N25
\fifo_transmiter_map|array_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][2]~q\);

-- Location: FF_X23_Y7_N5
\fifo_transmiter_map|array_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][2]~q\);

-- Location: LCCOMB_X23_Y3_N24
\transmiter_map|Selector14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2)) # ((\fifo_transmiter_map|array_reg[2][2]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (!\fifo_transmiter_map|rd_ptr_reg\(2) & 
-- (\fifo_transmiter_map|array_reg[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[0][2]~q\,
	datad => \fifo_transmiter_map|array_reg[2][2]~q\,
	combout => \transmiter_map|Selector14~14_combout\);

-- Location: LCCOMB_X23_Y3_N26
\transmiter_map|Selector14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~15_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector14~14_combout\ & ((\fifo_transmiter_map|array_reg[6][2]~q\))) # (!\transmiter_map|Selector14~14_combout\ & 
-- (\fifo_transmiter_map|array_reg[4][2]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[4][2]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[6][2]~q\,
	datad => \transmiter_map|Selector14~14_combout\,
	combout => \transmiter_map|Selector14~15_combout\);

-- Location: LCCOMB_X22_Y6_N24
\transmiter_map|Selector14~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|rd_ptr_reg\(0))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\transmiter_map|Selector14~13_combout\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector14~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \transmiter_map|Selector14~13_combout\,
	datad => \transmiter_map|Selector14~15_combout\,
	combout => \transmiter_map|Selector14~16_combout\);

-- Location: LCCOMB_X22_Y6_N10
\transmiter_map|Selector14~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~19_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector14~16_combout\ & ((\transmiter_map|Selector14~18_combout\))) # (!\transmiter_map|Selector14~16_combout\ & (\transmiter_map|Selector14~11_combout\)))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \transmiter_map|Selector14~11_combout\,
	datac => \transmiter_map|Selector14~18_combout\,
	datad => \transmiter_map|Selector14~16_combout\,
	combout => \transmiter_map|Selector14~19_combout\);

-- Location: FF_X25_Y3_N15
\fifo_transmiter_map|array_reg[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][2]~q\);

-- Location: FF_X26_Y3_N11
\fifo_transmiter_map|array_reg[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][2]~q\);

-- Location: FF_X26_Y3_N25
\fifo_transmiter_map|array_reg[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][2]~q\);

-- Location: LCCOMB_X25_Y3_N2
\fifo_transmiter_map|array_reg[26][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[26][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[26][2]~feeder_combout\);

-- Location: FF_X25_Y3_N3
\fifo_transmiter_map|array_reg[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[26][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][2]~q\);

-- Location: LCCOMB_X26_Y3_N24
\transmiter_map|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|rd_ptr_reg\(3))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[26][2]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[18][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][2]~q\,
	datad => \fifo_transmiter_map|array_reg[26][2]~q\,
	combout => \transmiter_map|Selector14~0_combout\);

-- Location: LCCOMB_X26_Y3_N10
\transmiter_map|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector14~0_combout\ & (\fifo_transmiter_map|array_reg[27][2]~q\)) # (!\transmiter_map|Selector14~0_combout\ & 
-- ((\fifo_transmiter_map|array_reg[19][2]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[27][2]~q\,
	datac => \fifo_transmiter_map|array_reg[19][2]~q\,
	datad => \transmiter_map|Selector14~0_combout\,
	combout => \transmiter_map|Selector14~1_combout\);

-- Location: LCCOMB_X24_Y5_N14
\fifo_transmiter_map|array_reg[30][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[30][2]~feeder_combout\);

-- Location: FF_X24_Y5_N15
\fifo_transmiter_map|array_reg[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][2]~q\);

-- Location: FF_X25_Y5_N23
\fifo_transmiter_map|array_reg[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][2]~q\);

-- Location: LCCOMB_X26_Y5_N8
\fifo_transmiter_map|array_reg[23][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[23][2]~feeder_combout\);

-- Location: FF_X26_Y5_N9
\fifo_transmiter_map|array_reg[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][2]~q\);

-- Location: FF_X25_Y5_N13
\fifo_transmiter_map|array_reg[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][2]~q\);

-- Location: LCCOMB_X25_Y5_N12
\transmiter_map|Selector14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[23][2]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[22][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|array_reg[23][2]~q\,
	datac => \fifo_transmiter_map|array_reg[22][2]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector14~7_combout\);

-- Location: LCCOMB_X25_Y5_N22
\transmiter_map|Selector14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~8_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector14~7_combout\ & ((\fifo_transmiter_map|array_reg[31][2]~q\))) # (!\transmiter_map|Selector14~7_combout\ & 
-- (\fifo_transmiter_map|array_reg[30][2]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[30][2]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[31][2]~q\,
	datad => \transmiter_map|Selector14~7_combout\,
	combout => \transmiter_map|Selector14~8_combout\);

-- Location: LCCOMB_X24_Y4_N28
\fifo_transmiter_map|array_reg[17][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[17][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[17][2]~feeder_combout\);

-- Location: FF_X24_Y4_N29
\fifo_transmiter_map|array_reg[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[17][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][2]~q\);

-- Location: FF_X23_Y4_N29
\fifo_transmiter_map|array_reg[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][2]~q\);

-- Location: LCCOMB_X24_Y4_N30
\fifo_transmiter_map|array_reg[24][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[24][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[24][2]~feeder_combout\);

-- Location: FF_X24_Y4_N31
\fifo_transmiter_map|array_reg[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[24][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][2]~q\);

-- Location: FF_X23_Y4_N7
\fifo_transmiter_map|array_reg[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][2]~q\);

-- Location: LCCOMB_X23_Y4_N6
\transmiter_map|Selector14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[24][2]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|array_reg[16][2]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[24][2]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[16][2]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector14~4_combout\);

-- Location: LCCOMB_X23_Y4_N28
\transmiter_map|Selector14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~5_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector14~4_combout\ & ((\fifo_transmiter_map|array_reg[25][2]~q\))) # (!\transmiter_map|Selector14~4_combout\ & 
-- (\fifo_transmiter_map|array_reg[17][2]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[17][2]~q\,
	datac => \fifo_transmiter_map|array_reg[25][2]~q\,
	datad => \transmiter_map|Selector14~4_combout\,
	combout => \transmiter_map|Selector14~5_combout\);

-- Location: LCCOMB_X21_Y5_N12
\fifo_transmiter_map|array_reg[28][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[28][2]~feeder_combout\);

-- Location: FF_X21_Y5_N13
\fifo_transmiter_map|array_reg[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][2]~q\);

-- Location: FF_X23_Y5_N15
\fifo_transmiter_map|array_reg[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][2]~q\);

-- Location: LCCOMB_X24_Y6_N24
\fifo_transmiter_map|array_reg[21][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][2]~feeder_combout\ = \receiver_map|d_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(2),
	combout => \fifo_transmiter_map|array_reg[21][2]~feeder_combout\);

-- Location: FF_X24_Y6_N25
\fifo_transmiter_map|array_reg[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][2]~q\);

-- Location: FF_X23_Y5_N29
\fifo_transmiter_map|array_reg[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][2]~q\);

-- Location: LCCOMB_X23_Y5_N28
\transmiter_map|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[21][2]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|array_reg[20][2]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[21][2]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[20][2]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector14~2_combout\);

-- Location: LCCOMB_X23_Y5_N14
\transmiter_map|Selector14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector14~2_combout\ & ((\fifo_transmiter_map|array_reg[29][2]~q\))) # (!\transmiter_map|Selector14~2_combout\ & 
-- (\fifo_transmiter_map|array_reg[28][2]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\transmiter_map|Selector14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[28][2]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[29][2]~q\,
	datad => \transmiter_map|Selector14~2_combout\,
	combout => \transmiter_map|Selector14~3_combout\);

-- Location: LCCOMB_X21_Y3_N6
\transmiter_map|Selector14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\transmiter_map|Selector14~3_combout\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\transmiter_map|Selector14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector14~5_combout\,
	datad => \transmiter_map|Selector14~3_combout\,
	combout => \transmiter_map|Selector14~6_combout\);

-- Location: LCCOMB_X21_Y3_N24
\transmiter_map|Selector14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector14~6_combout\ & ((\transmiter_map|Selector14~8_combout\))) # (!\transmiter_map|Selector14~6_combout\ & (\transmiter_map|Selector14~1_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \transmiter_map|Selector14~1_combout\,
	datac => \transmiter_map|Selector14~8_combout\,
	datad => \transmiter_map|Selector14~6_combout\,
	combout => \transmiter_map|Selector14~9_combout\);

-- Location: LCCOMB_X22_Y3_N30
\transmiter_map|Selector14~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector14~20_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(4) & ((\transmiter_map|Selector14~9_combout\))) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & (\transmiter_map|Selector14~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(4),
	datab => \transmiter_map|Selector14~19_combout\,
	datad => \transmiter_map|Selector14~9_combout\,
	combout => \transmiter_map|Selector14~20_combout\);

-- Location: LCCOMB_X25_Y3_N6
\fifo_transmiter_map|array_reg[27][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[27][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[27][1]~feeder_combout\);

-- Location: FF_X25_Y3_N7
\fifo_transmiter_map|array_reg[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[27][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][1]~q\);

-- Location: FF_X26_Y3_N19
\fifo_transmiter_map|array_reg[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][1]~q\);

-- Location: FF_X26_Y3_N5
\fifo_transmiter_map|array_reg[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][1]~q\);

-- Location: LCCOMB_X26_Y3_N18
\transmiter_map|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3)) # ((\fifo_transmiter_map|array_reg[19][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (!\fifo_transmiter_map|rd_ptr_reg\(3) & 
-- (\fifo_transmiter_map|array_reg[18][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][1]~q\,
	datad => \fifo_transmiter_map|array_reg[19][1]~q\,
	combout => \transmiter_map|Selector15~0_combout\);

-- Location: FF_X25_Y3_N17
\fifo_transmiter_map|array_reg[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][1]~q\);

-- Location: LCCOMB_X25_Y3_N16
\transmiter_map|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~1_combout\ = (\transmiter_map|Selector15~0_combout\ & ((\fifo_transmiter_map|array_reg[27][1]~q\) # ((!\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\transmiter_map|Selector15~0_combout\ & 
-- (((\fifo_transmiter_map|array_reg[26][1]~q\ & \fifo_transmiter_map|rd_ptr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[27][1]~q\,
	datab => \transmiter_map|Selector15~0_combout\,
	datac => \fifo_transmiter_map|array_reg[26][1]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector15~1_combout\);

-- Location: LCCOMB_X26_Y5_N2
\fifo_transmiter_map|array_reg[23][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[23][1]~feeder_combout\);

-- Location: FF_X26_Y5_N3
\fifo_transmiter_map|array_reg[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][1]~q\);

-- Location: FF_X25_Y5_N5
\fifo_transmiter_map|array_reg[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][1]~q\);

-- Location: LCCOMB_X24_Y5_N0
\fifo_transmiter_map|array_reg[30][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[30][1]~feeder_combout\);

-- Location: FF_X24_Y5_N1
\fifo_transmiter_map|array_reg[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][1]~q\);

-- Location: FF_X25_Y5_N29
\fifo_transmiter_map|array_reg[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][1]~q\);

-- Location: LCCOMB_X25_Y5_N28
\transmiter_map|Selector15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[30][1]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[22][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[30][1]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[22][1]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector15~7_combout\);

-- Location: LCCOMB_X26_Y5_N24
\transmiter_map|Selector15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~8_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector15~7_combout\ & ((\fifo_transmiter_map|array_reg[31][1]~q\))) # (!\transmiter_map|Selector15~7_combout\ & 
-- (\fifo_transmiter_map|array_reg[23][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[23][1]~q\,
	datac => \fifo_transmiter_map|array_reg[31][1]~q\,
	datad => \transmiter_map|Selector15~7_combout\,
	combout => \transmiter_map|Selector15~8_combout\);

-- Location: LCCOMB_X24_Y6_N30
\fifo_transmiter_map|array_reg[21][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[21][1]~feeder_combout\);

-- Location: FF_X24_Y6_N31
\fifo_transmiter_map|array_reg[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][1]~q\);

-- Location: FF_X23_Y5_N31
\fifo_transmiter_map|array_reg[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][1]~q\);

-- Location: LCCOMB_X21_Y5_N26
\fifo_transmiter_map|array_reg[28][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[28][1]~feeder_combout\);

-- Location: FF_X21_Y5_N27
\fifo_transmiter_map|array_reg[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][1]~q\);

-- Location: FF_X23_Y5_N17
\fifo_transmiter_map|array_reg[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][1]~q\);

-- Location: LCCOMB_X23_Y5_N16
\transmiter_map|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[28][1]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[20][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[28][1]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[20][1]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector15~2_combout\);

-- Location: LCCOMB_X23_Y5_N30
\transmiter_map|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector15~2_combout\ & ((\fifo_transmiter_map|array_reg[29][1]~q\))) # (!\transmiter_map|Selector15~2_combout\ & 
-- (\fifo_transmiter_map|array_reg[21][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[21][1]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[29][1]~q\,
	datad => \transmiter_map|Selector15~2_combout\,
	combout => \transmiter_map|Selector15~3_combout\);

-- Location: LCCOMB_X24_Y4_N2
\fifo_transmiter_map|array_reg[17][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[17][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[17][1]~feeder_combout\);

-- Location: FF_X24_Y4_N3
\fifo_transmiter_map|array_reg[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[17][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][1]~q\);

-- Location: FF_X23_Y4_N31
\fifo_transmiter_map|array_reg[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][1]~q\);

-- Location: LCCOMB_X23_Y4_N30
\transmiter_map|Selector15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[17][1]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[16][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[17][1]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[16][1]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \transmiter_map|Selector15~4_combout\);

-- Location: LCCOMB_X24_Y4_N0
\fifo_transmiter_map|array_reg[24][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[24][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[24][1]~feeder_combout\);

-- Location: FF_X24_Y4_N1
\fifo_transmiter_map|array_reg[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[24][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][1]~q\);

-- Location: FF_X23_Y4_N1
\fifo_transmiter_map|array_reg[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][1]~q\);

-- Location: LCCOMB_X23_Y4_N0
\transmiter_map|Selector15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~5_combout\ = (\transmiter_map|Selector15~4_combout\ & (((\fifo_transmiter_map|array_reg[25][1]~q\) # (!\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\transmiter_map|Selector15~4_combout\ & (\fifo_transmiter_map|array_reg[24][1]~q\ 
-- & ((\fifo_transmiter_map|rd_ptr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector15~4_combout\,
	datab => \fifo_transmiter_map|array_reg[24][1]~q\,
	datac => \fifo_transmiter_map|array_reg[25][1]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \transmiter_map|Selector15~5_combout\);

-- Location: LCCOMB_X23_Y4_N22
\transmiter_map|Selector15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & (((\fifo_transmiter_map|rd_ptr_reg\(2))))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2) & (\transmiter_map|Selector15~3_combout\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector15~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector15~3_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|rd_ptr_reg\(2),
	datad => \transmiter_map|Selector15~5_combout\,
	combout => \transmiter_map|Selector15~6_combout\);

-- Location: LCCOMB_X22_Y3_N22
\transmiter_map|Selector15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector15~6_combout\ & ((\transmiter_map|Selector15~8_combout\))) # (!\transmiter_map|Selector15~6_combout\ & (\transmiter_map|Selector15~1_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector15~1_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \transmiter_map|Selector15~8_combout\,
	datad => \transmiter_map|Selector15~6_combout\,
	combout => \transmiter_map|Selector15~9_combout\);

-- Location: LCCOMB_X25_Y4_N22
\fifo_transmiter_map|array_reg[15][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[15][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[15][1]~feeder_combout\);

-- Location: FF_X25_Y4_N23
\fifo_transmiter_map|array_reg[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[15][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][1]~q\);

-- Location: LCCOMB_X26_Y4_N6
\fifo_transmiter_map|array_reg[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[11][1]~feeder_combout\);

-- Location: FF_X26_Y4_N7
\fifo_transmiter_map|array_reg[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][1]~q\);

-- Location: FF_X22_Y4_N13
\fifo_transmiter_map|array_reg[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][1]~q\);

-- Location: LCCOMB_X22_Y4_N18
\fifo_transmiter_map|array_reg[13][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[13][1]~feeder_combout\);

-- Location: FF_X22_Y4_N19
\fifo_transmiter_map|array_reg[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][1]~q\);

-- Location: LCCOMB_X22_Y4_N12
\transmiter_map|Selector15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\fifo_transmiter_map|array_reg[13][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\fifo_transmiter_map|array_reg[9][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[9][1]~q\,
	datad => \fifo_transmiter_map|array_reg[13][1]~q\,
	combout => \transmiter_map|Selector15~17_combout\);

-- Location: LCCOMB_X22_Y4_N30
\transmiter_map|Selector15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector15~17_combout\ & (\fifo_transmiter_map|array_reg[15][1]~q\)) # (!\transmiter_map|Selector15~17_combout\ & 
-- ((\fifo_transmiter_map|array_reg[11][1]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[15][1]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[11][1]~q\,
	datad => \transmiter_map|Selector15~17_combout\,
	combout => \transmiter_map|Selector15~18_combout\);

-- Location: LCCOMB_X26_Y6_N26
\fifo_transmiter_map|array_reg[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[4][1]~feeder_combout\);

-- Location: FF_X26_Y6_N27
\fifo_transmiter_map|array_reg[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][1]~q\);

-- Location: FF_X23_Y3_N11
\fifo_transmiter_map|array_reg[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][1]~q\);

-- Location: FF_X23_Y3_N21
\fifo_transmiter_map|array_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][1]~q\);

-- Location: LCCOMB_X24_Y6_N28
\fifo_transmiter_map|array_reg[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[2][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[2][1]~feeder_combout\);

-- Location: FF_X24_Y6_N29
\fifo_transmiter_map|array_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[2][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][1]~q\);

-- Location: LCCOMB_X23_Y3_N20
\transmiter_map|Selector15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|rd_ptr_reg\(2)) # ((\fifo_transmiter_map|array_reg[2][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (!\fifo_transmiter_map|rd_ptr_reg\(2) & 
-- (\fifo_transmiter_map|array_reg[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(1),
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[0][1]~q\,
	datad => \fifo_transmiter_map|array_reg[2][1]~q\,
	combout => \transmiter_map|Selector15~14_combout\);

-- Location: LCCOMB_X23_Y3_N10
\transmiter_map|Selector15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~15_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector15~14_combout\ & ((\fifo_transmiter_map|array_reg[6][1]~q\))) # (!\transmiter_map|Selector15~14_combout\ & 
-- (\fifo_transmiter_map|array_reg[4][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[4][1]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(2),
	datac => \fifo_transmiter_map|array_reg[6][1]~q\,
	datad => \transmiter_map|Selector15~14_combout\,
	combout => \transmiter_map|Selector15~15_combout\);

-- Location: LCCOMB_X21_Y3_N16
\fifo_transmiter_map|array_reg[10][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[10][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[10][1]~feeder_combout\);

-- Location: FF_X21_Y3_N17
\fifo_transmiter_map|array_reg[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[10][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][1]~q\);

-- Location: FF_X21_Y4_N31
\fifo_transmiter_map|array_reg[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][1]~q\);

-- Location: FF_X21_Y4_N25
\fifo_transmiter_map|array_reg[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][1]~q\);

-- Location: LCCOMB_X21_Y6_N6
\fifo_transmiter_map|array_reg[12][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[12][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[12][1]~feeder_combout\);

-- Location: FF_X21_Y6_N7
\fifo_transmiter_map|array_reg[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[12][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][1]~q\);

-- Location: LCCOMB_X21_Y4_N24
\transmiter_map|Selector15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\fifo_transmiter_map|array_reg[12][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- (\fifo_transmiter_map|array_reg[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[8][1]~q\,
	datad => \fifo_transmiter_map|array_reg[12][1]~q\,
	combout => \transmiter_map|Selector15~12_combout\);

-- Location: LCCOMB_X21_Y4_N30
\transmiter_map|Selector15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~13_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\transmiter_map|Selector15~12_combout\ & ((\fifo_transmiter_map|array_reg[14][1]~q\))) # (!\transmiter_map|Selector15~12_combout\ & 
-- (\fifo_transmiter_map|array_reg[10][1]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\transmiter_map|Selector15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[10][1]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[14][1]~q\,
	datad => \transmiter_map|Selector15~12_combout\,
	combout => \transmiter_map|Selector15~13_combout\);

-- Location: LCCOMB_X23_Y3_N12
\transmiter_map|Selector15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|rd_ptr_reg\(3))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & ((\transmiter_map|Selector15~13_combout\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (\transmiter_map|Selector15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \transmiter_map|Selector15~15_combout\,
	datad => \transmiter_map|Selector15~13_combout\,
	combout => \transmiter_map|Selector15~16_combout\);

-- Location: LCCOMB_X21_Y7_N26
\fifo_transmiter_map|array_reg[7][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[7][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[7][1]~feeder_combout\);

-- Location: FF_X21_Y7_N27
\fifo_transmiter_map|array_reg[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[7][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][1]~q\);

-- Location: FF_X21_Y6_N5
\fifo_transmiter_map|array_reg[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][1]~q\);

-- Location: FF_X21_Y7_N17
\fifo_transmiter_map|array_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][1]~q\);

-- Location: LCCOMB_X24_Y3_N28
\fifo_transmiter_map|array_reg[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[3][1]~feeder_combout\ = \receiver_map|d_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(1),
	combout => \fifo_transmiter_map|array_reg[3][1]~feeder_combout\);

-- Location: FF_X24_Y3_N29
\fifo_transmiter_map|array_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][1]~q\);

-- Location: LCCOMB_X21_Y7_N16
\transmiter_map|Selector15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(1))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[3][1]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[1][1]~q\,
	datad => \fifo_transmiter_map|array_reg[3][1]~q\,
	combout => \transmiter_map|Selector15~10_combout\);

-- Location: LCCOMB_X21_Y6_N4
\transmiter_map|Selector15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~11_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\transmiter_map|Selector15~10_combout\ & (\fifo_transmiter_map|array_reg[7][1]~q\)) # (!\transmiter_map|Selector15~10_combout\ & 
-- ((\fifo_transmiter_map|array_reg[5][1]~q\))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\transmiter_map|Selector15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[7][1]~q\,
	datac => \fifo_transmiter_map|array_reg[5][1]~q\,
	datad => \transmiter_map|Selector15~10_combout\,
	combout => \transmiter_map|Selector15~11_combout\);

-- Location: LCCOMB_X22_Y3_N28
\transmiter_map|Selector15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~19_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\transmiter_map|Selector15~16_combout\ & (\transmiter_map|Selector15~18_combout\)) # (!\transmiter_map|Selector15~16_combout\ & ((\transmiter_map|Selector15~11_combout\))))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\transmiter_map|Selector15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector15~18_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \transmiter_map|Selector15~16_combout\,
	datad => \transmiter_map|Selector15~11_combout\,
	combout => \transmiter_map|Selector15~19_combout\);

-- Location: LCCOMB_X22_Y3_N26
\transmiter_map|Selector15~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector15~20_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(4) & (\transmiter_map|Selector15~9_combout\)) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & ((\transmiter_map|Selector15~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector15~9_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(4),
	datad => \transmiter_map|Selector15~19_combout\,
	combout => \transmiter_map|Selector15~20_combout\);

-- Location: LCCOMB_X19_Y6_N14
\transmiter_map|data_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|data_reg[0]~3_combout\ = (\transmiter_map|data_reg\(0) & ((\transmiter_map|state_reg.idle~q\) # (!\fifo_transmiter_map|empty_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|state_reg.idle~q\,
	datac => \transmiter_map|data_reg\(0),
	datad => \fifo_transmiter_map|empty_reg~q\,
	combout => \transmiter_map|data_reg[0]~3_combout\);

-- Location: LCCOMB_X21_Y6_N28
\fifo_transmiter_map|array_reg[12][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[12][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[12][0]~feeder_combout\);

-- Location: FF_X21_Y6_N29
\fifo_transmiter_map|array_reg[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[12][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[12][0]~q\);

-- Location: FF_X21_Y4_N23
\fifo_transmiter_map|array_reg[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[14][0]~q\);

-- Location: FF_X21_Y4_N21
\fifo_transmiter_map|array_reg[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[8][0]~q\);

-- Location: LCCOMB_X21_Y3_N18
\fifo_transmiter_map|array_reg[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[10][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[10][0]~feeder_combout\);

-- Location: FF_X21_Y3_N19
\fifo_transmiter_map|array_reg[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[10][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[10][0]~q\);

-- Location: LCCOMB_X21_Y4_N20
\fifo_transmiter_map|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~10_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (\fifo_transmiter_map|rd_ptr_reg\(1))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[10][0]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[8][0]~q\,
	datad => \fifo_transmiter_map|array_reg[10][0]~q\,
	combout => \fifo_transmiter_map|Mux7~10_combout\);

-- Location: LCCOMB_X21_Y4_N22
\fifo_transmiter_map|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~11_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|Mux7~10_combout\ & ((\fifo_transmiter_map|array_reg[14][0]~q\))) # (!\fifo_transmiter_map|Mux7~10_combout\ & 
-- (\fifo_transmiter_map|array_reg[12][0]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[12][0]~q\,
	datac => \fifo_transmiter_map|array_reg[14][0]~q\,
	datad => \fifo_transmiter_map|Mux7~10_combout\,
	combout => \fifo_transmiter_map|Mux7~11_combout\);

-- Location: LCCOMB_X22_Y4_N24
\fifo_transmiter_map|array_reg[13][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[13][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[13][0]~feeder_combout\);

-- Location: FF_X22_Y4_N25
\fifo_transmiter_map|array_reg[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[13][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[13][0]~q\);

-- Location: FF_X25_Y4_N27
\fifo_transmiter_map|array_reg[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[15][0]~q\);

-- Location: LCCOMB_X26_Y4_N16
\fifo_transmiter_map|array_reg[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[11][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[11][0]~feeder_combout\);

-- Location: FF_X26_Y4_N17
\fifo_transmiter_map|array_reg[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[11][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[11][0]~q\);

-- Location: FF_X25_Y4_N17
\fifo_transmiter_map|array_reg[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[9][0]~q\);

-- Location: LCCOMB_X25_Y4_N16
\fifo_transmiter_map|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~17_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[11][0]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[9][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[11][0]~q\,
	datac => \fifo_transmiter_map|array_reg[9][0]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \fifo_transmiter_map|Mux7~17_combout\);

-- Location: LCCOMB_X25_Y4_N26
\fifo_transmiter_map|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~18_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|Mux7~17_combout\ & ((\fifo_transmiter_map|array_reg[15][0]~q\))) # (!\fifo_transmiter_map|Mux7~17_combout\ & 
-- (\fifo_transmiter_map|array_reg[13][0]~q\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[13][0]~q\,
	datac => \fifo_transmiter_map|array_reg[15][0]~q\,
	datad => \fifo_transmiter_map|Mux7~17_combout\,
	combout => \fifo_transmiter_map|Mux7~18_combout\);

-- Location: LCCOMB_X24_Y3_N22
\fifo_transmiter_map|array_reg[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[3][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[3][0]~feeder_combout\);

-- Location: FF_X24_Y3_N23
\fifo_transmiter_map|array_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[3][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[3][0]~q\);

-- Location: FF_X21_Y7_N31
\fifo_transmiter_map|array_reg[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[7][0]~q\);

-- Location: LCCOMB_X21_Y6_N10
\fifo_transmiter_map|array_reg[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[5][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[5][0]~feeder_combout\);

-- Location: FF_X21_Y6_N11
\fifo_transmiter_map|array_reg[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[5][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[5][0]~q\);

-- Location: FF_X21_Y7_N29
\fifo_transmiter_map|array_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[1][0]~q\);

-- Location: LCCOMB_X21_Y7_N28
\fifo_transmiter_map|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~12_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|array_reg[5][0]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|array_reg[1][0]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[5][0]~q\,
	datac => \fifo_transmiter_map|array_reg[1][0]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \fifo_transmiter_map|Mux7~12_combout\);

-- Location: LCCOMB_X21_Y7_N30
\fifo_transmiter_map|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~13_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|Mux7~12_combout\ & ((\fifo_transmiter_map|array_reg[7][0]~q\))) # (!\fifo_transmiter_map|Mux7~12_combout\ & (\fifo_transmiter_map|array_reg[3][0]~q\)))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\fifo_transmiter_map|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[3][0]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|array_reg[7][0]~q\,
	datad => \fifo_transmiter_map|Mux7~12_combout\,
	combout => \fifo_transmiter_map|Mux7~13_combout\);

-- Location: LCCOMB_X26_Y6_N28
\fifo_transmiter_map|array_reg[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[4][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[4][0]~feeder_combout\);

-- Location: FF_X26_Y6_N29
\fifo_transmiter_map|array_reg[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[4][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[4][0]~q\);

-- Location: FF_X19_Y6_N3
\fifo_transmiter_map|array_reg[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[6][0]~q\);

-- Location: FF_X24_Y7_N21
\fifo_transmiter_map|array_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[2][0]~q\);

-- Location: FF_X23_Y7_N23
\fifo_transmiter_map|array_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[0][0]~q\);

-- Location: LCCOMB_X23_Y7_N22
\fifo_transmiter_map|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~14_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|rd_ptr_reg\(1))))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1) & (\fifo_transmiter_map|array_reg[2][0]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|array_reg[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[2][0]~q\,
	datac => \fifo_transmiter_map|array_reg[0][0]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(1),
	combout => \fifo_transmiter_map|Mux7~14_combout\);

-- Location: LCCOMB_X19_Y6_N2
\fifo_transmiter_map|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~15_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|Mux7~14_combout\ & ((\fifo_transmiter_map|array_reg[6][0]~q\))) # (!\fifo_transmiter_map|Mux7~14_combout\ & (\fifo_transmiter_map|array_reg[4][0]~q\)))) 
-- # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (((\fifo_transmiter_map|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|array_reg[4][0]~q\,
	datac => \fifo_transmiter_map|array_reg[6][0]~q\,
	datad => \fifo_transmiter_map|Mux7~14_combout\,
	combout => \fifo_transmiter_map|Mux7~15_combout\);

-- Location: LCCOMB_X19_Y6_N28
\fifo_transmiter_map|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~16_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|rd_ptr_reg\(0))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|Mux7~13_combout\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|Mux7~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|Mux7~13_combout\,
	datad => \fifo_transmiter_map|Mux7~15_combout\,
	combout => \fifo_transmiter_map|Mux7~16_combout\);

-- Location: LCCOMB_X19_Y6_N30
\fifo_transmiter_map|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~19_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|Mux7~16_combout\ & ((\fifo_transmiter_map|Mux7~18_combout\))) # (!\fifo_transmiter_map|Mux7~16_combout\ & (\fifo_transmiter_map|Mux7~11_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|Mux7~11_combout\,
	datac => \fifo_transmiter_map|Mux7~18_combout\,
	datad => \fifo_transmiter_map|Mux7~16_combout\,
	combout => \fifo_transmiter_map|Mux7~19_combout\);

-- Location: LCCOMB_X25_Y3_N10
\fifo_transmiter_map|array_reg[27][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[27][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[27][0]~feeder_combout\);

-- Location: FF_X25_Y3_N11
\fifo_transmiter_map|array_reg[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[27][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[27][0]~q\);

-- Location: FF_X26_Y3_N21
\fifo_transmiter_map|array_reg[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[19][0]~q\);

-- Location: FF_X26_Y3_N3
\fifo_transmiter_map|array_reg[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[18][0]~q\);

-- Location: LCCOMB_X25_Y3_N8
\fifo_transmiter_map|array_reg[26][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[26][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[26][0]~feeder_combout\);

-- Location: FF_X25_Y3_N9
\fifo_transmiter_map|array_reg[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[26][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[26][0]~q\);

-- Location: LCCOMB_X26_Y3_N2
\fifo_transmiter_map|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~0_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|rd_ptr_reg\(3))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[26][0]~q\))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (\fifo_transmiter_map|array_reg[18][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[18][0]~q\,
	datad => \fifo_transmiter_map|array_reg[26][0]~q\,
	combout => \fifo_transmiter_map|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y3_N20
\fifo_transmiter_map|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~1_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|Mux7~0_combout\ & (\fifo_transmiter_map|array_reg[27][0]~q\)) # (!\fifo_transmiter_map|Mux7~0_combout\ & ((\fifo_transmiter_map|array_reg[19][0]~q\))))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[27][0]~q\,
	datac => \fifo_transmiter_map|array_reg[19][0]~q\,
	datad => \fifo_transmiter_map|Mux7~0_combout\,
	combout => \fifo_transmiter_map|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y5_N10
\fifo_transmiter_map|array_reg[30][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[30][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[30][0]~feeder_combout\);

-- Location: FF_X24_Y5_N11
\fifo_transmiter_map|array_reg[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[30][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[30][0]~q\);

-- Location: FF_X25_Y5_N27
\fifo_transmiter_map|array_reg[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[31][0]~q\);

-- Location: LCCOMB_X26_Y5_N10
\fifo_transmiter_map|array_reg[23][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[23][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[23][0]~feeder_combout\);

-- Location: FF_X26_Y5_N11
\fifo_transmiter_map|array_reg[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[23][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[23][0]~q\);

-- Location: FF_X25_Y5_N15
\fifo_transmiter_map|array_reg[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[22][0]~q\);

-- Location: LCCOMB_X25_Y5_N14
\fifo_transmiter_map|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~7_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|rd_ptr_reg\(0) & (\fifo_transmiter_map|array_reg[23][0]~q\)) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[22][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[23][0]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[22][0]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \fifo_transmiter_map|Mux7~7_combout\);

-- Location: LCCOMB_X24_Y6_N8
\fifo_transmiter_map|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~8_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|Mux7~7_combout\ & ((\fifo_transmiter_map|array_reg[31][0]~q\))) # (!\fifo_transmiter_map|Mux7~7_combout\ & (\fifo_transmiter_map|array_reg[30][0]~q\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(3),
	datab => \fifo_transmiter_map|array_reg[30][0]~q\,
	datac => \fifo_transmiter_map|array_reg[31][0]~q\,
	datad => \fifo_transmiter_map|Mux7~7_combout\,
	combout => \fifo_transmiter_map|Mux7~8_combout\);

-- Location: LCCOMB_X21_Y5_N24
\fifo_transmiter_map|array_reg[28][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[28][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[28][0]~feeder_combout\);

-- Location: FF_X21_Y5_N25
\fifo_transmiter_map|array_reg[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[28][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[28][0]~q\);

-- Location: FF_X23_Y5_N3
\fifo_transmiter_map|array_reg[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[29][0]~q\);

-- Location: LCCOMB_X24_Y6_N18
\fifo_transmiter_map|array_reg[21][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[21][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[21][0]~feeder_combout\);

-- Location: FF_X24_Y6_N19
\fifo_transmiter_map|array_reg[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[21][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[21][0]~q\);

-- Location: FF_X23_Y5_N5
\fifo_transmiter_map|array_reg[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[20][0]~q\);

-- Location: LCCOMB_X23_Y5_N4
\fifo_transmiter_map|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~2_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|array_reg[21][0]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(3))))) # (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|array_reg[20][0]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[21][0]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(0),
	datac => \fifo_transmiter_map|array_reg[20][0]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(3),
	combout => \fifo_transmiter_map|Mux7~2_combout\);

-- Location: LCCOMB_X23_Y5_N2
\fifo_transmiter_map|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~3_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|Mux7~2_combout\ & ((\fifo_transmiter_map|array_reg[29][0]~q\))) # (!\fifo_transmiter_map|Mux7~2_combout\ & (\fifo_transmiter_map|array_reg[28][0]~q\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[28][0]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[29][0]~q\,
	datad => \fifo_transmiter_map|Mux7~2_combout\,
	combout => \fifo_transmiter_map|Mux7~3_combout\);

-- Location: LCCOMB_X24_Y4_N20
\fifo_transmiter_map|array_reg[17][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[17][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[17][0]~feeder_combout\);

-- Location: FF_X24_Y4_N21
\fifo_transmiter_map|array_reg[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[17][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[17][0]~q\);

-- Location: FF_X23_Y4_N27
\fifo_transmiter_map|array_reg[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[25][0]~q\);

-- Location: LCCOMB_X24_Y4_N6
\fifo_transmiter_map|array_reg[24][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|array_reg[24][0]~feeder_combout\ = \receiver_map|d_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \receiver_map|d_reg\(0),
	combout => \fifo_transmiter_map|array_reg[24][0]~feeder_combout\);

-- Location: FF_X24_Y4_N7
\fifo_transmiter_map|array_reg[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_transmiter_map|array_reg[24][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \fifo_transmiter_map|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[24][0]~q\);

-- Location: FF_X23_Y4_N17
\fifo_transmiter_map|array_reg[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \receiver_map|d_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \fifo_transmiter_map|Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_transmiter_map|array_reg[16][0]~q\);

-- Location: LCCOMB_X23_Y4_N16
\fifo_transmiter_map|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~4_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(3) & ((\fifo_transmiter_map|array_reg[24][0]~q\) # ((\fifo_transmiter_map|rd_ptr_reg\(0))))) # (!\fifo_transmiter_map|rd_ptr_reg\(3) & (((\fifo_transmiter_map|array_reg[16][0]~q\ & 
-- !\fifo_transmiter_map|rd_ptr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|array_reg[24][0]~q\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(3),
	datac => \fifo_transmiter_map|array_reg[16][0]~q\,
	datad => \fifo_transmiter_map|rd_ptr_reg\(0),
	combout => \fifo_transmiter_map|Mux7~4_combout\);

-- Location: LCCOMB_X23_Y4_N26
\fifo_transmiter_map|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~5_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(0) & ((\fifo_transmiter_map|Mux7~4_combout\ & ((\fifo_transmiter_map|array_reg[25][0]~q\))) # (!\fifo_transmiter_map|Mux7~4_combout\ & (\fifo_transmiter_map|array_reg[17][0]~q\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(0) & (((\fifo_transmiter_map|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(0),
	datab => \fifo_transmiter_map|array_reg[17][0]~q\,
	datac => \fifo_transmiter_map|array_reg[25][0]~q\,
	datad => \fifo_transmiter_map|Mux7~4_combout\,
	combout => \fifo_transmiter_map|Mux7~5_combout\);

-- Location: LCCOMB_X19_Y6_N6
\fifo_transmiter_map|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~6_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(2) & ((\fifo_transmiter_map|rd_ptr_reg\(1)) # ((\fifo_transmiter_map|Mux7~3_combout\)))) # (!\fifo_transmiter_map|rd_ptr_reg\(2) & (!\fifo_transmiter_map|rd_ptr_reg\(1) & 
-- ((\fifo_transmiter_map|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|rd_ptr_reg\(2),
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|Mux7~3_combout\,
	datad => \fifo_transmiter_map|Mux7~5_combout\,
	combout => \fifo_transmiter_map|Mux7~6_combout\);

-- Location: LCCOMB_X19_Y6_N20
\fifo_transmiter_map|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_transmiter_map|Mux7~9_combout\ = (\fifo_transmiter_map|rd_ptr_reg\(1) & ((\fifo_transmiter_map|Mux7~6_combout\ & ((\fifo_transmiter_map|Mux7~8_combout\))) # (!\fifo_transmiter_map|Mux7~6_combout\ & (\fifo_transmiter_map|Mux7~1_combout\)))) # 
-- (!\fifo_transmiter_map|rd_ptr_reg\(1) & (((\fifo_transmiter_map|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_transmiter_map|Mux7~1_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(1),
	datac => \fifo_transmiter_map|Mux7~8_combout\,
	datad => \fifo_transmiter_map|Mux7~6_combout\,
	combout => \fifo_transmiter_map|Mux7~9_combout\);

-- Location: LCCOMB_X19_Y6_N24
\transmiter_map|data_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|data_reg[0]~2_combout\ = (\transmiter_map|Selector8~3_combout\ & ((\fifo_transmiter_map|rd_ptr_reg\(4) & ((\fifo_transmiter_map|Mux7~9_combout\))) # (!\fifo_transmiter_map|rd_ptr_reg\(4) & (\fifo_transmiter_map|Mux7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|Selector8~3_combout\,
	datab => \fifo_transmiter_map|rd_ptr_reg\(4),
	datac => \fifo_transmiter_map|Mux7~19_combout\,
	datad => \fifo_transmiter_map|Mux7~9_combout\,
	combout => \transmiter_map|data_reg[0]~2_combout\);

-- Location: LCCOMB_X19_Y6_N12
\transmiter_map|data_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|data_reg[0]~4_combout\ = (\transmiter_map|data_reg[0]~2_combout\) # ((\transmiter_map|data_reg[0]~3_combout\ & ((!\transmiter_map|data_next~0_combout\) # (!\transmiter_map|state_reg.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|state_reg.idle~q\,
	datab => \transmiter_map|data_next~0_combout\,
	datac => \transmiter_map|data_reg[0]~3_combout\,
	datad => \transmiter_map|data_reg[0]~2_combout\,
	combout => \transmiter_map|data_reg[0]~4_combout\);

-- Location: FF_X19_Y6_N13
\transmiter_map|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|data_reg[0]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(0));

-- Location: LCCOMB_X23_Y6_N30
\transmiter_map|data_reg[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|data_reg[7]~5_combout\ = (\transmiter_map|data_next~0_combout\) # ((!\transmiter_map|state_reg.idle~q\ & \fifo_transmiter_map|empty_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmiter_map|state_reg.idle~q\,
	datac => \fifo_transmiter_map|empty_reg~q\,
	datad => \transmiter_map|data_next~0_combout\,
	combout => \transmiter_map|data_reg[7]~5_combout\);

-- Location: FF_X22_Y3_N27
\transmiter_map|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector15~20_combout\,
	asdata => \transmiter_map|data_reg\(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \transmiter_map|state_reg.data~q\,
	ena => \transmiter_map|data_reg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(1));

-- Location: FF_X22_Y3_N31
\transmiter_map|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector14~20_combout\,
	asdata => \transmiter_map|data_reg\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \transmiter_map|state_reg.data~q\,
	ena => \transmiter_map|data_reg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(2));

-- Location: FF_X22_Y3_N15
\transmiter_map|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector13~20_combout\,
	asdata => \transmiter_map|data_reg\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \transmiter_map|state_reg.data~q\,
	ena => \transmiter_map|data_reg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(3));

-- Location: FF_X22_Y3_N19
\transmiter_map|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector12~20_combout\,
	asdata => \transmiter_map|data_reg\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \transmiter_map|state_reg.data~q\,
	ena => \transmiter_map|data_reg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(4));

-- Location: FF_X22_Y2_N23
\transmiter_map|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector11~20_combout\,
	asdata => \transmiter_map|data_reg\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \transmiter_map|state_reg.data~q\,
	ena => \transmiter_map|data_reg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(5));

-- Location: FF_X22_Y2_N17
\transmiter_map|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector10~20_combout\,
	asdata => \transmiter_map|data_reg\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \transmiter_map|state_reg.data~q\,
	ena => \transmiter_map|data_reg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(6));

-- Location: FF_X22_Y3_N9
\transmiter_map|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector9~20_combout\,
	asdata => \transmiter_map|data_reg\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \transmiter_map|state_reg.data~q\,
	ena => \transmiter_map|data_reg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|data_reg\(7));

-- Location: LCCOMB_X19_Y6_N0
\transmiter_map|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmiter_map|Selector0~0_combout\ = (\transmiter_map|state_reg.idle~q\ & (!\transmiter_map|state_reg.stop~q\ & ((!\transmiter_map|data_reg\(7)) # (!\transmiter_map|state_reg.data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmiter_map|state_reg.idle~q\,
	datab => \transmiter_map|state_reg.stop~q\,
	datac => \transmiter_map|state_reg.data~q\,
	datad => \transmiter_map|data_reg\(7),
	combout => \transmiter_map|Selector0~0_combout\);

-- Location: FF_X19_Y6_N1
\transmiter_map|tx_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmiter_map|Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmiter_map|tx_reg~q\);

ww_tx <= \tx~output_o\;

ww_rx_full <= \rx_full~output_o\;

ww_tx_full <= \tx_full~output_o\;

ww_rx_empty <= \rx_empty~output_o\;

ww_r_data(0) <= \r_data[0]~output_o\;

ww_r_data(1) <= \r_data[1]~output_o\;

ww_r_data(2) <= \r_data[2]~output_o\;

ww_r_data(3) <= \r_data[3]~output_o\;

ww_r_data(4) <= \r_data[4]~output_o\;

ww_r_data(5) <= \r_data[5]~output_o\;

ww_r_data(6) <= \r_data[6]~output_o\;

ww_r_data(7) <= \r_data[7]~output_o\;

ww_rx1 <= \rx1~output_o\;

ww_tx1 <= \tx1~output_o\;
END structure;


