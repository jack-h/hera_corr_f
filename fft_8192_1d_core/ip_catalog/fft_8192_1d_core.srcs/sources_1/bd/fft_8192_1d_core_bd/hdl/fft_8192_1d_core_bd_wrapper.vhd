--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.1 (lin64) Build 2580384 Sat Jun 29 08:04:45 MDT 2019
--Date        : Thu Feb  4 14:31:44 2021
--Host        : acme1 running 64-bit Ubuntu 16.04.2 LTS
--Command     : generate_target fft_8192_1d_core_bd_wrapper.bd
--Design      : fft_8192_1d_core_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fft_8192_1d_core_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out1 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out2 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out3 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out4 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out5 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out6 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out7 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    overflow : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pol0_in0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in1 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in10 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in11 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in12 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in13 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in14 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in15 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in2 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in3 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in4 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in5 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in6 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in7 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in8 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in9 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    shift : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sync : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fft_8192_1d_core_bd_wrapper;

architecture STRUCTURE of fft_8192_1d_core_bd_wrapper is
  component fft_8192_1d_core_bd is
  port (
    clk : in STD_LOGIC;
    out0 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out1 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out2 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out3 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out4 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out5 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out6 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    out7 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    overflow : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pol0_in0 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in1 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in10 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in11 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in12 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in13 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in14 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in15 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in2 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in3 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in4 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in5 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in6 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in7 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in8 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    pol0_in9 : in STD_LOGIC_VECTOR ( 17 downto 0 );
    shift : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sync : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component fft_8192_1d_core_bd;
begin
fft_8192_1d_core_bd_i: component fft_8192_1d_core_bd
     port map (
      clk => clk,
      out0(35 downto 0) => out0(35 downto 0),
      out1(35 downto 0) => out1(35 downto 0),
      out2(35 downto 0) => out2(35 downto 0),
      out3(35 downto 0) => out3(35 downto 0),
      out4(35 downto 0) => out4(35 downto 0),
      out5(35 downto 0) => out5(35 downto 0),
      out6(35 downto 0) => out6(35 downto 0),
      out7(35 downto 0) => out7(35 downto 0),
      overflow(3 downto 0) => overflow(3 downto 0),
      pol0_in0(17 downto 0) => pol0_in0(17 downto 0),
      pol0_in1(17 downto 0) => pol0_in1(17 downto 0),
      pol0_in10(17 downto 0) => pol0_in10(17 downto 0),
      pol0_in11(17 downto 0) => pol0_in11(17 downto 0),
      pol0_in12(17 downto 0) => pol0_in12(17 downto 0),
      pol0_in13(17 downto 0) => pol0_in13(17 downto 0),
      pol0_in14(17 downto 0) => pol0_in14(17 downto 0),
      pol0_in15(17 downto 0) => pol0_in15(17 downto 0),
      pol0_in2(17 downto 0) => pol0_in2(17 downto 0),
      pol0_in3(17 downto 0) => pol0_in3(17 downto 0),
      pol0_in4(17 downto 0) => pol0_in4(17 downto 0),
      pol0_in5(17 downto 0) => pol0_in5(17 downto 0),
      pol0_in6(17 downto 0) => pol0_in6(17 downto 0),
      pol0_in7(17 downto 0) => pol0_in7(17 downto 0),
      pol0_in8(17 downto 0) => pol0_in8(17 downto 0),
      pol0_in9(17 downto 0) => pol0_in9(17 downto 0),
      shift(15 downto 0) => shift(15 downto 0),
      sync(31 downto 0) => sync(31 downto 0),
      sync_out(0) => sync_out(0)
    );
end STRUCTURE;
