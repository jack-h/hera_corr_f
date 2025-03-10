-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity pfb_fir_8192ch_core_stub is
  port (
    pol0_in0 : in std_logic_vector( 8-1 downto 0 );
    pol0_in1 : in std_logic_vector( 8-1 downto 0 );
    pol0_in10 : in std_logic_vector( 8-1 downto 0 );
    pol0_in11 : in std_logic_vector( 8-1 downto 0 );
    pol0_in12 : in std_logic_vector( 8-1 downto 0 );
    pol0_in13 : in std_logic_vector( 8-1 downto 0 );
    pol0_in14 : in std_logic_vector( 8-1 downto 0 );
    pol0_in15 : in std_logic_vector( 8-1 downto 0 );
    pol0_in2 : in std_logic_vector( 8-1 downto 0 );
    pol0_in3 : in std_logic_vector( 8-1 downto 0 );
    pol0_in4 : in std_logic_vector( 8-1 downto 0 );
    pol0_in5 : in std_logic_vector( 8-1 downto 0 );
    pol0_in6 : in std_logic_vector( 8-1 downto 0 );
    pol0_in7 : in std_logic_vector( 8-1 downto 0 );
    pol0_in8 : in std_logic_vector( 8-1 downto 0 );
    pol0_in9 : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    pol0_out0 : out std_logic_vector( 12-1 downto 0 );
    pol0_out1 : out std_logic_vector( 12-1 downto 0 );
    pol0_out10 : out std_logic_vector( 12-1 downto 0 );
    pol0_out11 : out std_logic_vector( 12-1 downto 0 );
    pol0_out12 : out std_logic_vector( 12-1 downto 0 );
    pol0_out13 : out std_logic_vector( 12-1 downto 0 );
    pol0_out14 : out std_logic_vector( 12-1 downto 0 );
    pol0_out15 : out std_logic_vector( 12-1 downto 0 );
    pol0_out2 : out std_logic_vector( 12-1 downto 0 );
    pol0_out3 : out std_logic_vector( 12-1 downto 0 );
    pol0_out4 : out std_logic_vector( 12-1 downto 0 );
    pol0_out5 : out std_logic_vector( 12-1 downto 0 );
    pol0_out6 : out std_logic_vector( 12-1 downto 0 );
    pol0_out7 : out std_logic_vector( 12-1 downto 0 );
    pol0_out8 : out std_logic_vector( 12-1 downto 0 );
    pol0_out9 : out std_logic_vector( 12-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_8192ch_core_stub;
architecture structural of pfb_fir_8192ch_core_stub is 
begin
  sysgen_dut : entity xil_defaultlib.pfb_fir_8192ch_core 
  port map (
    pol0_in0 => pol0_in0,
    pol0_in1 => pol0_in1,
    pol0_in10 => pol0_in10,
    pol0_in11 => pol0_in11,
    pol0_in12 => pol0_in12,
    pol0_in13 => pol0_in13,
    pol0_in14 => pol0_in14,
    pol0_in15 => pol0_in15,
    pol0_in2 => pol0_in2,
    pol0_in3 => pol0_in3,
    pol0_in4 => pol0_in4,
    pol0_in5 => pol0_in5,
    pol0_in6 => pol0_in6,
    pol0_in7 => pol0_in7,
    pol0_in8 => pol0_in8,
    pol0_in9 => pol0_in9,
    sync => sync,
    clk => clk,
    pol0_out0 => pol0_out0,
    pol0_out1 => pol0_out1,
    pol0_out10 => pol0_out10,
    pol0_out11 => pol0_out11,
    pol0_out12 => pol0_out12,
    pol0_out13 => pol0_out13,
    pol0_out14 => pol0_out14,
    pol0_out15 => pol0_out15,
    pol0_out2 => pol0_out2,
    pol0_out3 => pol0_out3,
    pol0_out4 => pol0_out4,
    pol0_out5 => pol0_out5,
    pol0_out6 => pol0_out6,
    pol0_out7 => pol0_out7,
    pol0_out8 => pol0_out8,
    pol0_out9 => pol0_out9,
    sync_out => sync_out
  );
end structural;
