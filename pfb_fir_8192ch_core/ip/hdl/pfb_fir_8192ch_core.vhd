-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_1 is
  port (
    sync : in std_logic_vector( 1-1 downto 0 );
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    sync_out : out std_logic_vector( 1-1 downto 0 );
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_1;
architecture structural of pfb_fir_8192ch_core_adder_1_1 is 
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal sync_delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal ce_net : std_logic;
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  sync_out <= sync_delay_q_net;
  dout <= addr3_s_net;
  delay_q_net <= sync;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  sync_delay_x44 : entity xil_defaultlib.sysgen_delay_5d6cce76f2 
  port map (
    clr => '0',
    d => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    q => sync_delay_q_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_10
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_10 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_10;
architecture structural of pfb_fir_8192ch_core_adder_1_10 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_11
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_11 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_11;
architecture structural of pfb_fir_8192ch_core_adder_1_11 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_12
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_12 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_12;
architecture structural of pfb_fir_8192ch_core_adder_1_12 is 
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_13
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_13 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_13;
architecture structural of pfb_fir_8192ch_core_adder_1_13 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_14
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_14 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_14;
architecture structural of pfb_fir_8192ch_core_adder_1_14 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_15
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_15 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_15;
architecture structural of pfb_fir_8192ch_core_adder_1_15 is 
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_16
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_16 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_16;
architecture structural of pfb_fir_8192ch_core_adder_1_16 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_2 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_2;
architecture structural of pfb_fir_8192ch_core_adder_1_2 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_3 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_3;
architecture structural of pfb_fir_8192ch_core_adder_1_3 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_4 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_4;
architecture structural of pfb_fir_8192ch_core_adder_1_4 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_5 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_5;
architecture structural of pfb_fir_8192ch_core_adder_1_5 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_6 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_6;
architecture structural of pfb_fir_8192ch_core_adder_1_6 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_7 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_7;
architecture structural of pfb_fir_8192ch_core_adder_1_7 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_8
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_8 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_8;
architecture structural of pfb_fir_8192ch_core_adder_1_8 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/adder_1_9
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_adder_1_9 is
  port (
    din1 : in std_logic_vector( 26-1 downto 0 );
    din2 : in std_logic_vector( 26-1 downto 0 );
    din3 : in std_logic_vector( 26-1 downto 0 );
    din4 : in std_logic_vector( 26-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_adder_1_9;
architecture structural of pfb_fir_8192ch_core_adder_1_9 is 
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addr1_s_net : std_logic_vector( 26-1 downto 0 );
  signal addr2_s_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= addr3_s_net;
  mult_p_net <= din1;
  mult_p_net_x1 <= din2;
  mult_p_net_x2 <= din3;
  mult_p_net_x0 <= din4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addr1 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net,
    b => mult_p_net_x1,
    clk => clk_net,
    ce => ce_net,
    s => addr1_s_net
  );
  addr2 : entity xil_defaultlib.sysgen_addsub_9af72ccc35 
  port map (
    clr => '0',
    a => mult_p_net_x2,
    b => mult_p_net_x0,
    clk => clk_net,
    ce => ce_net,
    s => addr2_s_net
  );
  addr3 : entity xil_defaultlib.pfb_fir_8192ch_core_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 24,
    a_width => 26,
    b_arith => xlSigned,
    b_bin_pt => 24,
    b_width => 26,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 27,
    core_name0 => "pfb_fir_8192ch_core_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 27,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 24,
    s_width => 26
  )
  port map (
    clr => '0',
    en => "1",
    a => addr1_s_net,
    b => addr2_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addr3_s_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in10_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in10_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in10_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in9_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in9_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in9_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b591c5_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_085f89_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_2a067a_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_8bdd51_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x39 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x39;
architecture structural of pfb_fir_8192ch_core_delay_bram_x39 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in10_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in10_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in10_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x39 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in10_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in10_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in10_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x46 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x46;
architecture structural of pfb_fir_8192ch_core_delay_bram_x46 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in10_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in10_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in10_tap2 is 
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x46 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x45 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x45;
architecture structural of pfb_fir_8192ch_core_delay_bram_x45 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in10_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in10_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in10_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in10_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x45 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in11_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in11_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in11_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in10_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in10_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in10_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_28b985_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_00361e_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_fdd2fa_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_26831e_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x44 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x44;
architecture structural of pfb_fir_8192ch_core_delay_bram_x44 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in11_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in11_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in11_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x44 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in11_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in11_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in11_last_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x43 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x43;
architecture structural of pfb_fir_8192ch_core_delay_bram_x43 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in11_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in11_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in11_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x43 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x42 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x42;
architecture structural of pfb_fir_8192ch_core_delay_bram_x42 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in11_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in11_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in11_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in11_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x42 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in12_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in12_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in12_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in11_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in11_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in11_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_97b9fc_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_09d550_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_0ba527_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_27c51a_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x33 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x33;
architecture structural of pfb_fir_8192ch_core_delay_bram_x33 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in12_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in12_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in12_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x33 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in12_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in12_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in12_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x32 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x32;
architecture structural of pfb_fir_8192ch_core_delay_bram_x32 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in12_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in12_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in12_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x32 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x29 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x29;
architecture structural of pfb_fir_8192ch_core_delay_bram_x29 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in12_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in12_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in12_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in12_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x29 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in13_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in13_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in13_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in12_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in12_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in12_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_41a3f3_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_27bcea_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_ed7be7_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_594fb6_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x31 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x31;
architecture structural of pfb_fir_8192ch_core_delay_bram_x31 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in13_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in13_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in13_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x31 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in13_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in13_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in13_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x30 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x30;
architecture structural of pfb_fir_8192ch_core_delay_bram_x30 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in13_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in13_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in13_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x30 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x37 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x37;
architecture structural of pfb_fir_8192ch_core_delay_bram_x37 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in13_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in13_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in13_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in13_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x37 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in14_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in14_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in14_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in13_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in13_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in13_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_4eb95b_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_a580d1_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_840a2f_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_97f6be_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x36 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x36;
architecture structural of pfb_fir_8192ch_core_delay_bram_x36 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in14_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in14_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in14_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x36 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in14_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in14_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in14_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x35 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x35;
architecture structural of pfb_fir_8192ch_core_delay_bram_x35 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in14_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in14_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in14_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x35 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x34 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x34;
architecture structural of pfb_fir_8192ch_core_delay_bram_x34 is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in14_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in14_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in14_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in14_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x34 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in15_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in15_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in15_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in14_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in14_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in14_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_7a3863_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_00bad8_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b19351_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_01b889_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x3;
architecture structural of pfb_fir_8192ch_core_delay_bram_x3 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in15_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in15_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in15_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x3 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in15_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in15_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in15_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x2;
architecture structural of pfb_fir_8192ch_core_delay_bram_x2 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in15_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in15_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in15_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x2 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x1 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x1;
architecture structural of pfb_fir_8192ch_core_delay_bram_x1 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in15_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in15_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in15_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in15_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x1 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in16_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in16_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in16_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in15_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in15_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in15_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_6edd36_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_fdb2fe_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_99c7cd_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_fc3b92_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x0 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x0;
architecture structural of pfb_fir_8192ch_core_delay_bram_x0 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in16_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in16_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in16_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x0 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in16_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in16_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in16_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram;
architecture structural of pfb_fir_8192ch_core_delay_bram is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in16_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in16_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in16_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x4 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x4;
architecture structural of pfb_fir_8192ch_core_delay_bram_x4 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in16_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in16_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in16_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in16_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x4 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in1_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in1_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in1_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in0_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= delay1_q_net;
  sync_out <= delay_q_net;
  coeff <= register_q_net;
  pol0_in0_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in0_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_3407be_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b41c5d_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_fcb056_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_f3ecb2_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x5 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x5;
architecture structural of pfb_fir_8192ch_core_delay_bram_x5 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_first_tap/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_sync_delay is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_8192ch_core_sync_delay;
architecture structural of pfb_fir_8192ch_core_sync_delay is 
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 14-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net;
  delay_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_bad8a75cb5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_6c7e003559 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_da390adeb9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 14
  )
  port map (
    rst => "0",
    clr => '0',
    load => delay_q_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_80eec7adda 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => delay_q_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_bb894efa5d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => delay_q_net,
    d1 => relational_op_net,
    y => mux_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_34fa202604 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_b390b4fdeb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in1_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in1_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in1_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  sync_out <= mux_y_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x5 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  sync_delay_x44 : entity xil_defaultlib.pfb_fir_8192ch_core_sync_delay 
  port map (
    in_x0 => delay_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in1_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in1_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in1_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  sync_out <= delay_q_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x9 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x9;
architecture structural of pfb_fir_8192ch_core_delay_bram_x9 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_tap2/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_sync_delay_x1 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_8192ch_core_sync_delay_x1;
architecture structural of pfb_fir_8192ch_core_sync_delay_x1 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 14-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_bad8a75cb5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_6c7e003559 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_da390adeb9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 14
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_80eec7adda 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_bb894efa5d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_34fa202604 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_b390b4fdeb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in1_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in1_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in1_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x9 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x44 : entity xil_defaultlib.pfb_fir_8192ch_core_sync_delay_x1 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x8 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x8;
architecture structural of pfb_fir_8192ch_core_delay_bram_x8 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_tap3/sync_delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_sync_delay_x0 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end pfb_fir_8192ch_core_sync_delay_x0;
architecture structural of pfb_fir_8192ch_core_sync_delay_x0 is 
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 14-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 14-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= mux_y_net_x0;
  mux_y_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_bad8a75cb5 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_6c7e003559 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_da390adeb9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 14
  )
  port map (
    rst => "0",
    clr => '0',
    load => mux_y_net,
    din => constant2_op_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_80eec7adda 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => mux_y_net,
    d1 => relational1_op_net,
    y => logical_y_net
  );
  mux : entity xil_defaultlib.sysgen_mux_bb894efa5d 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    sel => constant3_op_net,
    d0 => mux_y_net,
    d1 => relational_op_net,
    y => mux_y_net_x0
  );
  relational : entity xil_defaultlib.sysgen_relational_34fa202604 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => constant_op_net,
    b => counter_op_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_b390b4fdeb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => constant1_op_net,
    op => relational1_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in1_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in1_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in1_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in1_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  sync_out <= mux_y_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  mux_y_net <= sync;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x8 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  sync_delay_x44 : entity xil_defaultlib.pfb_fir_8192ch_core_sync_delay_x0 
  port map (
    in_x0 => mux_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => mux_y_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in2_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in2_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in2_coeffs is 
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in1_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in1_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in1_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e9ac52_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_8a3683_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_4b6fda_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_1c5cde_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x10 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x10;
architecture structural of pfb_fir_8192ch_core_delay_bram_x10 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in2_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in2_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in2_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x10 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in2_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in2_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in2_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x7 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x7;
architecture structural of pfb_fir_8192ch_core_delay_bram_x7 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in2_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in2_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in2_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x7 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x6 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x6;
architecture structural of pfb_fir_8192ch_core_delay_bram_x6 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in2_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in2_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in2_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in2_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x6 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in3_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in3_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in3_coeffs is 
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in2_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in2_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_1f8fc2_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_a7dc62_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e12e42_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in2_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_2be436_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x23 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x23;
architecture structural of pfb_fir_8192ch_core_delay_bram_x23 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in3_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in3_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in3_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x23 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in3_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in3_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in3_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x22 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x22;
architecture structural of pfb_fir_8192ch_core_delay_bram_x22 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in3_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in3_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in3_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x22 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x21 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x21;
architecture structural of pfb_fir_8192ch_core_delay_bram_x21 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in3_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in3_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in3_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in3_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x21 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in4_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in4_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in4_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in3_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in3_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in3_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_7a5e25_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_60a890_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_b8ecfc_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_7055a8_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x20 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x20;
architecture structural of pfb_fir_8192ch_core_delay_bram_x20 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in4_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in4_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in4_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x20 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in4_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in4_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in4_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x28 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x28;
architecture structural of pfb_fir_8192ch_core_delay_bram_x28 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in4_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in4_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in4_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x28 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x27 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x27;
architecture structural of pfb_fir_8192ch_core_delay_bram_x27 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in4_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in4_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in4_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in4_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x27 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in5_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in5_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in5_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in4_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in4_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in4_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_fc3989_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_143592_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_c0b730_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_eb1976_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x26 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x26;
architecture structural of pfb_fir_8192ch_core_delay_bram_x26 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in5_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in5_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in5_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x26 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in5_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in5_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in5_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x25 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x25;
architecture structural of pfb_fir_8192ch_core_delay_bram_x25 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in5_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in5_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in5_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x25 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x24 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x24;
architecture structural of pfb_fir_8192ch_core_delay_bram_x24 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in5_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in5_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in5_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in5_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x24 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in6_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in6_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in6_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in5_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in5_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in5_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_79cec1_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_02948c_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e15e47_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_5d48a2_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x15 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x15;
architecture structural of pfb_fir_8192ch_core_delay_bram_x15 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in6_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in6_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in6_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x15 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in6_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in6_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in6_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x14 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x14;
architecture structural of pfb_fir_8192ch_core_delay_bram_x14 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in6_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in6_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in6_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x14 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x12 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x12;
architecture structural of pfb_fir_8192ch_core_delay_bram_x12 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in6_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in6_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in6_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in6_tap3 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x12 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in7_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in7_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in7_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in6_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in6_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in6_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_8b256c_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_35cf89_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_9cb890_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e3835e_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x11 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x11;
architecture structural of pfb_fir_8192ch_core_delay_bram_x11 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in7_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in7_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in7_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x11 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in7_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in7_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in7_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x13 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x13;
architecture structural of pfb_fir_8192ch_core_delay_bram_x13 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in7_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in7_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in7_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x13 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x19 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x19;
architecture structural of pfb_fir_8192ch_core_delay_bram_x19 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in7_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in7_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in7_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in7_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x19 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in8_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in8_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in8_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in7_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in7_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in7_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_5d81c0_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_3f8c05_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_4b5444_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_6a8440_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x16 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x16;
architecture structural of pfb_fir_8192ch_core_delay_bram_x16 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in8_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in8_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in8_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x16 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in8_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in8_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in8_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x18 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x18;
architecture structural of pfb_fir_8192ch_core_delay_bram_x18 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in8_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in8_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in8_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x18 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x17 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x17;
architecture structural of pfb_fir_8192ch_core_delay_bram_x17 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in8_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in8_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in8_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in8_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x17 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_coeffs
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in9_coeffs is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff : out std_logic_vector( 72-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in9_coeffs;
architecture structural of pfb_fir_8192ch_core_pol1_in9_coeffs is 
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal pol0_in8_net : std_logic_vector( 8-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal concat_y_net : std_logic_vector( 72-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal rom1_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom2_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay2_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom3_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay3_q_net : std_logic_vector( 10-1 downto 0 );
  signal rom4_data_net : std_logic_vector( 18-1 downto 0 );
  signal fan_delay4_q_net : std_logic_vector( 10-1 downto 0 );
begin
  dout <= delay1_q_net;
  coeff <= register_q_net;
  pol0_in8_net <= din;
  slice_y_net <= sync;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat : entity xil_defaultlib.sysgen_concat_16f785847c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret2_output_port_net,
    in2 => reinterpret3_output_port_net,
    in3 => reinterpret4_output_port_net,
    y => concat_y_net
  );
  counter : entity xil_defaultlib.pfb_fir_8192ch_core_xlcounter_free 
  generic map (
    core_name0 => "pfb_fir_8192ch_core_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    en => "1",
    clr => '0',
    rst => slice_y_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 8
  )
  port map (
    en => '1',
    rst => '0',
    d => pol0_in8_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  rom1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_54fbf7_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom1_data_net
  );
  rom2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_c72eb8_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom2_data_net
  );
  rom3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_e18f49_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom3_data_net
  );
  rom4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlsprom 
  generic map (
    c_address_width => 10,
    c_width => 18,
    latency => 2,
    mem_init_file => "xpm_9f008d_vivado.mem",
    mem_size => 18432,
    mem_type => "block",
    read_reset_val => "0"
  )
  port map (
    en => "1",
    rst => "0",
    addr => fan_delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    data => rom4_data_net
  );
  register_x0 : entity xil_defaultlib.pfb_fir_8192ch_core_xlregister 
  generic map (
    d_width => 72,
    init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
  )
  port map (
    en => "1",
    rst => "0",
    d => concat_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom1_data_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom2_data_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom3_data_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9c4faaffba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => rom4_data_net,
    output_port => reinterpret4_output_port_net
  );
  fan_delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay1_q_net
  );
  fan_delay2 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay2_q_net
  );
  fan_delay3 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay3_q_net
  );
  fan_delay4 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => fan_delay4_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_first_tap/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x41 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x41;
architecture structural of pfb_fir_8192ch_core_delay_bram_x41 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  delay1_q_net <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => delay1_q_net,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_first_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in9_first_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    sync : in std_logic_vector( 1-1 downto 0 );
    coeffs : in std_logic_vector( 72-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 54-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in9_first_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in9_first_tap is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret2_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net;
  coeff_out <= slice1_y_net;
  taps_out <= mult_p_net;
  delay1_q_net <= din;
  delay_q_net <= sync;
  register_q_net <= coeffs;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x41 
  port map (
    din => delay1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret2_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret2_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 72,
    y_width => 18
  )
  port map (
    x => register_q_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 71,
    x_width => 72,
    y_width => 54
  )
  port map (
    x => register_q_net,
    y => slice1_y_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_last_tap
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in9_last_tap is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 18-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tap_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in9_last_tap;
architecture structural of pfb_fir_8192ch_core_pol1_in9_last_tap is 
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
begin
  tap_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_tap2/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x40 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x40;
architecture structural of pfb_fir_8192ch_core_delay_bram_x40 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_tap2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in9_tap2 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 54-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 36-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in9_tap2;
architecture structural of pfb_fir_8192ch_core_pol1_in9_tap2 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 36-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x40 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 54,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 53,
    x_width => 54,
    y_width => 36
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_tap3/delay_bram
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_delay_bram_x38 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 )
  );
end pfb_fir_8192ch_core_delay_bram_x38;
architecture structural of pfb_fir_8192ch_core_delay_bram_x38 is 
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 13-1 downto 0 );
  signal ram_data_out_net : std_logic_vector( 8-1 downto 0 );
begin
  dout <= d1_q_net;
  d1_q_net_x0 <= din;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_6bf7e08dbc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  counter : entity xil_defaultlib.sysgen_counter_70a3bbe4e5 
  port map (
    clr => '0',
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  ram : entity xil_defaultlib.pfb_fir_8192ch_core_xlspram 
  generic map (
    init_value => b"00000000",
    latency => 1,
    mem_init_file => "xpm_24d74b_vivado.mem",
    mem_size => 65536,
    mem_type => "block",
    read_reset_val => "0",
    width => 8,
    width_addr => 13,
    write_mode_a => "read_first",
    xpm_lat => 1
  )
  port map (
    en => "1",
    rst => "0",
    addr => counter_op_net,
    data_in => d1_q_net_x0,
    we => constant_op_net,
    clk => clk_net,
    ce => ce_net,
    data_out => ram_data_out_net
  );
  d1 : entity xil_defaultlib.sysgen_delay_e1d10b13c0 
  port map (
    clr => '0',
    d => ram_data_out_net,
    clk => clk_net,
    ce => ce_net,
    q => d1_q_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real/pol1_in9_tap3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pol1_in9_tap3 is
  port (
    din : in std_logic_vector( 8-1 downto 0 );
    coeff : in std_logic_vector( 36-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    dout : out std_logic_vector( 8-1 downto 0 );
    coeff_out : out std_logic_vector( 18-1 downto 0 );
    taps_out : out std_logic_vector( 26-1 downto 0 )
  );
end pfb_fir_8192ch_core_pol1_in9_tap3;
architecture structural of pfb_fir_8192ch_core_pol1_in9_tap3 is 
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 36-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 8-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 18-1 downto 0 );
  signal slice_y_net : std_logic_vector( 18-1 downto 0 );
begin
  dout <= d1_q_net_x0;
  coeff_out <= slice1_y_net_x0;
  taps_out <= mult_p_net;
  d1_q_net <= din;
  slice1_y_net <= coeff;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay_bram : entity xil_defaultlib.pfb_fir_8192ch_core_delay_bram_x38 
  port map (
    din => d1_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0
  );
  mult : entity xil_defaultlib.sysgen_mult_5dc617ecda 
  port map (
    clr => '0',
    a => reinterpret1_output_port_net,
    b => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    p => mult_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_6360238938 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f091575f27 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => d1_q_net,
    output_port => reinterpret1_output_port_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 17,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 18,
    new_msb => 35,
    x_width => 36,
    y_width => 18
  )
  port map (
    x => slice1_y_net,
    y => slice1_y_net_x0
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core/pfb_fir_real
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_pfb_fir_real is
  port (
    sync : in std_logic_vector( 1-1 downto 0 );
    pol1_in1 : in std_logic_vector( 8-1 downto 0 );
    pol1_in2 : in std_logic_vector( 8-1 downto 0 );
    pol1_in3 : in std_logic_vector( 8-1 downto 0 );
    pol1_in4 : in std_logic_vector( 8-1 downto 0 );
    pol1_in5 : in std_logic_vector( 8-1 downto 0 );
    pol1_in6 : in std_logic_vector( 8-1 downto 0 );
    pol1_in7 : in std_logic_vector( 8-1 downto 0 );
    pol1_in8 : in std_logic_vector( 8-1 downto 0 );
    pol1_in9 : in std_logic_vector( 8-1 downto 0 );
    pol1_in10 : in std_logic_vector( 8-1 downto 0 );
    pol1_in11 : in std_logic_vector( 8-1 downto 0 );
    pol1_in12 : in std_logic_vector( 8-1 downto 0 );
    pol1_in13 : in std_logic_vector( 8-1 downto 0 );
    pol1_in14 : in std_logic_vector( 8-1 downto 0 );
    pol1_in15 : in std_logic_vector( 8-1 downto 0 );
    pol1_in16 : in std_logic_vector( 8-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    sync_out : out std_logic_vector( 1-1 downto 0 );
    pol1_out1 : out std_logic_vector( 12-1 downto 0 );
    pol1_out2 : out std_logic_vector( 12-1 downto 0 );
    pol1_out3 : out std_logic_vector( 12-1 downto 0 );
    pol1_out4 : out std_logic_vector( 12-1 downto 0 );
    pol1_out5 : out std_logic_vector( 12-1 downto 0 );
    pol1_out6 : out std_logic_vector( 12-1 downto 0 );
    pol1_out7 : out std_logic_vector( 12-1 downto 0 );
    pol1_out8 : out std_logic_vector( 12-1 downto 0 );
    pol1_out9 : out std_logic_vector( 12-1 downto 0 );
    pol1_out10 : out std_logic_vector( 12-1 downto 0 );
    pol1_out11 : out std_logic_vector( 12-1 downto 0 );
    pol1_out12 : out std_logic_vector( 12-1 downto 0 );
    pol1_out13 : out std_logic_vector( 12-1 downto 0 );
    pol1_out14 : out std_logic_vector( 12-1 downto 0 );
    pol1_out15 : out std_logic_vector( 12-1 downto 0 );
    pol1_out16 : out std_logic_vector( 12-1 downto 0 )
  );
end pfb_fir_8192ch_core_pfb_fir_real;
architecture structural of pfb_fir_8192ch_core_pfb_fir_real is 
  signal delay1_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal convert_1_1_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_2_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_3_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_4_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_5_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_6_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_7_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_8_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_9_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_10_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_11_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_12_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_13_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_14_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_15_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_16_dout_net : std_logic_vector( 12-1 downto 0 );
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
  signal pol0_in0_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in1_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in2_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in3_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in4_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in5_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in6_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in7_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in8_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in9_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in10_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in11_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in12_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in13_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in14_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in15_net : std_logic_vector( 8-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal sync_delay_q_net_x10 : std_logic_vector( 1-1 downto 0 );
  signal addr3_s_net_x9 : std_logic_vector( 26-1 downto 0 );
  signal delay_q_net_x13 : std_logic_vector( 1-1 downto 0 );
  signal mult_p_net_x24 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x27 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x28 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x26 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x10 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x46 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x48 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x50 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x47 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x3 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x51 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x41 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x42 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x40 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x43 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x45 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x49 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x44 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x60 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x61 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x62 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x59 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x55 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x53 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x54 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x52 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x4 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x56 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x58 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x23 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x57 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x5 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x19 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x21 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x18 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x20 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x6 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x22 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x35 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x36 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x25 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x7 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x34 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x38 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x39 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x37 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x8 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x29 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x31 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x32 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x30 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x14 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x33 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x1 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x0 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x2 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x11 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x11 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x10 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x12 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x12 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x8 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x17 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x16 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x9 : std_logic_vector( 26-1 downto 0 );
  signal addr3_s_net_x13 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x15 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x13 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x7 : std_logic_vector( 26-1 downto 0 );
  signal mult_p_net_x14 : std_logic_vector( 26-1 downto 0 );
  signal delay1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x0 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x1 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x2 : std_logic_vector( 54-1 downto 0 );
  signal delay_q_net_x12 : std_logic_vector( 1-1 downto 0 );
  signal d1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x4 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x3 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x10 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x36 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x36 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x38 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x37 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x37 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x35 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x11 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x33 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x38 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x32 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x32 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x31 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x31 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x9 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x34 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x33 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x43 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x43 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x35 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x34 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x13 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x44 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x44 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x46 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x46 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x45 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x45 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x14 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x40 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x39 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x39 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x41 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x41 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x40 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x12 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x42 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x42 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x19 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x17 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x18 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x27 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x5 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x17 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x18 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x18 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x21 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x20 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x20 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x20 : std_logic_vector( 8-1 downto 0 );
  signal mux_y_net_x19 : std_logic_vector( 1-1 downto 0 );
  signal slice1_y_net_x19 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x3 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x13 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x13 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x15 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x15 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x14 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x14 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x4 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x16 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x16 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x28 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x26 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x27 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x25 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x8 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x29 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x28 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x24 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x30 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x30 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x29 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x7 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x6 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x23 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x21 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x25 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x23 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x22 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x22 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x7 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x26 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x24 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x0 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x1 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 8-1 downto 0 );
  signal register_q_net : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x10 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x6 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x7 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x8 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x8 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x2 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x1 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x6 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x11 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x11 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x12 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x12 : std_logic_vector( 36-1 downto 0 );
  signal delay1_q_net_x3 : std_logic_vector( 8-1 downto 0 );
  signal register_q_net_x2 : std_logic_vector( 72-1 downto 0 );
  signal d1_q_net_x9 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x10 : std_logic_vector( 54-1 downto 0 );
  signal d1_q_net_x4 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x5 : std_logic_vector( 18-1 downto 0 );
  signal d1_q_net_x5 : std_logic_vector( 8-1 downto 0 );
  signal slice1_y_net_x9 : std_logic_vector( 36-1 downto 0 );
  signal scale_1_3_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_4_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_5_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_6_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_7_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_8_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_9_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_10_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_11_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_12_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_13_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_14_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_15_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_16_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_1_op_net : std_logic_vector( 26-1 downto 0 );
  signal scale_1_2_op_net : std_logic_vector( 26-1 downto 0 );
begin
  sync_out <= delay1_q_net_x0;
  pol1_out1 <= convert_1_1_dout_net;
  pol1_out2 <= convert_1_2_dout_net;
  pol1_out3 <= convert_1_3_dout_net;
  pol1_out4 <= convert_1_4_dout_net;
  pol1_out5 <= convert_1_5_dout_net;
  pol1_out6 <= convert_1_6_dout_net;
  pol1_out7 <= convert_1_7_dout_net;
  pol1_out8 <= convert_1_8_dout_net;
  pol1_out9 <= convert_1_9_dout_net;
  pol1_out10 <= convert_1_10_dout_net;
  pol1_out11 <= convert_1_11_dout_net;
  pol1_out12 <= convert_1_12_dout_net;
  pol1_out13 <= convert_1_13_dout_net;
  pol1_out14 <= convert_1_14_dout_net;
  pol1_out15 <= convert_1_15_dout_net;
  pol1_out16 <= convert_1_16_dout_net;
  slice_y_net <= sync;
  pol0_in0_net <= pol1_in1;
  pol0_in1_net <= pol1_in2;
  pol0_in2_net <= pol1_in3;
  pol0_in3_net <= pol1_in4;
  pol0_in4_net <= pol1_in5;
  pol0_in5_net <= pol1_in6;
  pol0_in6_net <= pol1_in7;
  pol0_in7_net <= pol1_in8;
  pol0_in8_net <= pol1_in9;
  pol0_in9_net <= pol1_in10;
  pol0_in10_net <= pol1_in11;
  pol0_in11_net <= pol1_in12;
  pol0_in12_net <= pol1_in13;
  pol0_in13_net <= pol1_in14;
  pol0_in14_net <= pol1_in15;
  pol0_in15_net <= pol1_in16;
  clk_net <= clk_1;
  ce_net <= ce_1;
  adder_1_1 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_1 
  port map (
    sync => delay_q_net_x13,
    din1 => mult_p_net_x24,
    din2 => mult_p_net_x27,
    din3 => mult_p_net_x28,
    din4 => mult_p_net_x26,
    clk_1 => clk_net,
    ce_1 => ce_net,
    sync_out => sync_delay_q_net_x10,
    dout => addr3_s_net_x9
  );
  adder_1_10 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_10 
  port map (
    din1 => mult_p_net_x3,
    din2 => mult_p_net_x5,
    din3 => mult_p_net_x6,
    din4 => mult_p_net_x4,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x10
  );
  adder_1_11 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_11 
  port map (
    din1 => mult_p_net_x46,
    din2 => mult_p_net_x48,
    din3 => mult_p_net_x50,
    din4 => mult_p_net_x47,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x1
  );
  adder_1_12 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_12 
  port map (
    din1 => mult_p_net_x51,
    din2 => mult_p_net_x41,
    din3 => mult_p_net_x42,
    din4 => mult_p_net_x40,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x3
  );
  adder_1_13 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_13 
  port map (
    din1 => mult_p_net_x43,
    din2 => mult_p_net_x45,
    din3 => mult_p_net_x49,
    din4 => mult_p_net_x44,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x2
  );
  adder_1_14 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_14 
  port map (
    din1 => mult_p_net_x60,
    din2 => mult_p_net_x61,
    din3 => mult_p_net_x62,
    din4 => mult_p_net_x59,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net
  );
  adder_1_15 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_15 
  port map (
    din1 => mult_p_net_x55,
    din2 => mult_p_net_x53,
    din3 => mult_p_net_x54,
    din4 => mult_p_net_x52,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x0
  );
  adder_1_16 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_16 
  port map (
    din1 => mult_p_net_x56,
    din2 => mult_p_net_x58,
    din3 => mult_p_net_x23,
    din4 => mult_p_net_x57,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x4
  );
  adder_1_2 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_2 
  port map (
    din1 => mult_p_net_x19,
    din2 => mult_p_net_x21,
    din3 => mult_p_net_x18,
    din4 => mult_p_net_x20,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x5
  );
  adder_1_3 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_3 
  port map (
    din1 => mult_p_net_x22,
    din2 => mult_p_net_x35,
    din3 => mult_p_net_x36,
    din4 => mult_p_net_x25,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x6
  );
  adder_1_4 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_4 
  port map (
    din1 => mult_p_net_x34,
    din2 => mult_p_net_x38,
    din3 => mult_p_net_x39,
    din4 => mult_p_net_x37,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x7
  );
  adder_1_5 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_5 
  port map (
    din1 => mult_p_net_x29,
    din2 => mult_p_net_x31,
    din3 => mult_p_net_x32,
    din4 => mult_p_net_x30,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x8
  );
  adder_1_6 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_6 
  port map (
    din1 => mult_p_net_x33,
    din2 => mult_p_net_x1,
    din3 => mult_p_net_x0,
    din4 => mult_p_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x14
  );
  adder_1_7 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_7 
  port map (
    din1 => mult_p_net,
    din2 => mult_p_net_x11,
    din3 => mult_p_net_x10,
    din4 => mult_p_net_x12,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x11
  );
  adder_1_8 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_8 
  port map (
    din1 => mult_p_net_x8,
    din2 => mult_p_net_x17,
    din3 => mult_p_net_x16,
    din4 => mult_p_net_x9,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x12
  );
  adder_1_9 : entity xil_defaultlib.pfb_fir_8192ch_core_adder_1_9 
  port map (
    din1 => mult_p_net_x15,
    din2 => mult_p_net_x13,
    din3 => mult_p_net_x7,
    din4 => mult_p_net_x14,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => addr3_s_net_x13
  );
  pol1_in10_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in10_coeffs 
  port map (
    din => pol0_in9_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x1,
    coeff => register_q_net_x0
  );
  pol1_in10_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in10_first_tap 
  port map (
    din => delay1_q_net_x1,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x1,
    coeff_out => slice1_y_net_x2,
    taps_out => mult_p_net_x3
  );
  pol1_in10_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in10_last_tap 
  port map (
    din => d1_q_net_x7,
    coeff => slice1_y_net_x4,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x4
  );
  pol1_in10_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in10_tap2 
  port map (
    din => d1_q_net_x1,
    coeff => slice1_y_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x2,
    coeff_out => slice1_y_net_x3,
    taps_out => mult_p_net_x5
  );
  pol1_in10_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in10_tap3 
  port map (
    din => d1_q_net_x2,
    coeff => slice1_y_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x7,
    coeff_out => slice1_y_net_x4,
    taps_out => mult_p_net_x6
  );
  pol1_in11_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in11_coeffs 
  port map (
    din => pol0_in10_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x11,
    coeff => register_q_net_x10
  );
  pol1_in11_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in11_first_tap 
  port map (
    din => delay1_q_net_x11,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x10,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x36,
    coeff_out => slice1_y_net_x36,
    taps_out => mult_p_net_x46
  );
  pol1_in11_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in11_last_tap 
  port map (
    din => d1_q_net_x38,
    coeff => slice1_y_net_x37,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x47
  );
  pol1_in11_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in11_tap2 
  port map (
    din => d1_q_net_x36,
    coeff => slice1_y_net_x36,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x37,
    coeff_out => slice1_y_net_x35,
    taps_out => mult_p_net_x48
  );
  pol1_in11_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in11_tap3 
  port map (
    din => d1_q_net_x37,
    coeff => slice1_y_net_x35,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x38,
    coeff_out => slice1_y_net_x37,
    taps_out => mult_p_net_x50
  );
  pol1_in12_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in12_coeffs 
  port map (
    din => pol0_in11_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x12,
    coeff => register_q_net_x11
  );
  pol1_in12_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in12_first_tap 
  port map (
    din => delay1_q_net_x12,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x11,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x33,
    coeff_out => slice1_y_net_x38,
    taps_out => mult_p_net_x51
  );
  pol1_in12_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in12_last_tap 
  port map (
    din => d1_q_net_x32,
    coeff => slice1_y_net_x32,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x40
  );
  pol1_in12_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in12_tap2 
  port map (
    din => d1_q_net_x33,
    coeff => slice1_y_net_x38,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x31,
    coeff_out => slice1_y_net_x31,
    taps_out => mult_p_net_x41
  );
  pol1_in12_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in12_tap3 
  port map (
    din => d1_q_net_x31,
    coeff => slice1_y_net_x31,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x32,
    coeff_out => slice1_y_net_x32,
    taps_out => mult_p_net_x42
  );
  pol1_in13_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in13_coeffs 
  port map (
    din => pol0_in12_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x10,
    coeff => register_q_net_x9
  );
  pol1_in13_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in13_first_tap 
  port map (
    din => delay1_q_net_x10,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x9,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x34,
    coeff_out => slice1_y_net_x33,
    taps_out => mult_p_net_x43
  );
  pol1_in13_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in13_last_tap 
  port map (
    din => d1_q_net_x43,
    coeff => slice1_y_net_x43,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x44
  );
  pol1_in13_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in13_tap2 
  port map (
    din => d1_q_net_x34,
    coeff => slice1_y_net_x33,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x35,
    coeff_out => slice1_y_net_x34,
    taps_out => mult_p_net_x45
  );
  pol1_in13_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in13_tap3 
  port map (
    din => d1_q_net_x35,
    coeff => slice1_y_net_x34,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x43,
    coeff_out => slice1_y_net_x43,
    taps_out => mult_p_net_x49
  );
  pol1_in14_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in14_coeffs 
  port map (
    din => pol0_in13_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x14,
    coeff => register_q_net_x13
  );
  pol1_in14_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in14_first_tap 
  port map (
    din => delay1_q_net_x14,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x13,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x44,
    coeff_out => slice1_y_net_x44,
    taps_out => mult_p_net_x60
  );
  pol1_in14_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in14_last_tap 
  port map (
    din => d1_q_net_x46,
    coeff => slice1_y_net_x46,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x59
  );
  pol1_in14_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in14_tap2 
  port map (
    din => d1_q_net_x44,
    coeff => slice1_y_net_x44,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x45,
    coeff_out => slice1_y_net_x45,
    taps_out => mult_p_net_x61
  );
  pol1_in14_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in14_tap3 
  port map (
    din => d1_q_net_x45,
    coeff => slice1_y_net_x45,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x46,
    coeff_out => slice1_y_net_x46,
    taps_out => mult_p_net_x62
  );
  pol1_in15_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in15_coeffs 
  port map (
    din => pol0_in14_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x15,
    coeff => register_q_net_x14
  );
  pol1_in15_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in15_first_tap 
  port map (
    din => delay1_q_net_x15,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x14,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x40,
    coeff_out => slice1_y_net_x39,
    taps_out => mult_p_net_x55
  );
  pol1_in15_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in15_last_tap 
  port map (
    din => d1_q_net_x39,
    coeff => slice1_y_net_x41,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x52
  );
  pol1_in15_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in15_tap2 
  port map (
    din => d1_q_net_x40,
    coeff => slice1_y_net_x39,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x41,
    coeff_out => slice1_y_net_x40,
    taps_out => mult_p_net_x53
  );
  pol1_in15_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in15_tap3 
  port map (
    din => d1_q_net_x41,
    coeff => slice1_y_net_x40,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x39,
    coeff_out => slice1_y_net_x41,
    taps_out => mult_p_net_x54
  );
  pol1_in16_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in16_coeffs 
  port map (
    din => pol0_in15_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x13,
    coeff => register_q_net_x12
  );
  pol1_in16_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in16_first_tap 
  port map (
    din => delay1_q_net_x13,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x12,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x42,
    coeff_out => slice1_y_net_x42,
    taps_out => mult_p_net_x56
  );
  pol1_in16_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in16_last_tap 
  port map (
    din => d1_q_net_x19,
    coeff => slice1_y_net_x17,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x57
  );
  pol1_in16_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in16_tap2 
  port map (
    din => d1_q_net_x42,
    coeff => slice1_y_net_x42,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x18,
    coeff_out => slice1_y_net_x27,
    taps_out => mult_p_net_x58
  );
  pol1_in16_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in16_tap3 
  port map (
    din => d1_q_net_x18,
    coeff => slice1_y_net_x27,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x19,
    coeff_out => slice1_y_net_x17,
    taps_out => mult_p_net_x23
  );
  pol1_in1_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in1_coeffs 
  port map (
    din => pol0_in0_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x6,
    sync_out => delay_q_net_x12,
    coeff => register_q_net_x5
  );
  pol1_in1_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in1_first_tap 
  port map (
    din => delay1_q_net_x6,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x5,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x17,
    sync_out => mux_y_net_x18,
    coeff_out => slice1_y_net_x18,
    taps_out => mult_p_net_x24
  );
  pol1_in1_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in1_last_tap 
  port map (
    din => d1_q_net_x21,
    sync => mux_y_net_x20,
    coeff => slice1_y_net_x20,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x26,
    sync_out => delay_q_net_x13
  );
  pol1_in1_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in1_tap2 
  port map (
    din => d1_q_net_x17,
    sync => mux_y_net_x18,
    coeff => slice1_y_net_x18,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x20,
    sync_out => mux_y_net_x19,
    coeff_out => slice1_y_net_x19,
    taps_out => mult_p_net_x27
  );
  pol1_in1_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in1_tap3 
  port map (
    din => d1_q_net_x20,
    sync => mux_y_net_x19,
    coeff => slice1_y_net_x19,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x21,
    sync_out => mux_y_net_x20,
    coeff_out => slice1_y_net_x20,
    taps_out => mult_p_net_x28
  );
  pol1_in2_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in2_coeffs 
  port map (
    din => pol0_in1_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x4,
    coeff => register_q_net_x3
  );
  pol1_in2_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in2_first_tap 
  port map (
    din => delay1_q_net_x4,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x3,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x13,
    coeff_out => slice1_y_net_x13,
    taps_out => mult_p_net_x19
  );
  pol1_in2_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in2_last_tap 
  port map (
    din => d1_q_net_x15,
    coeff => slice1_y_net_x15,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x20
  );
  pol1_in2_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in2_tap2 
  port map (
    din => d1_q_net_x13,
    coeff => slice1_y_net_x13,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x14,
    coeff_out => slice1_y_net_x14,
    taps_out => mult_p_net_x21
  );
  pol1_in2_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in2_tap3 
  port map (
    din => d1_q_net_x14,
    coeff => slice1_y_net_x14,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x15,
    coeff_out => slice1_y_net_x15,
    taps_out => mult_p_net_x18
  );
  pol1_in3_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in3_coeffs 
  port map (
    din => pol0_in2_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x5,
    coeff => register_q_net_x4
  );
  pol1_in3_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in3_first_tap 
  port map (
    din => delay1_q_net_x5,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x4,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x16,
    coeff_out => slice1_y_net_x16,
    taps_out => mult_p_net_x22
  );
  pol1_in3_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in3_last_tap 
  port map (
    din => d1_q_net_x28,
    coeff => slice1_y_net_x26,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x25
  );
  pol1_in3_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in3_tap2 
  port map (
    din => d1_q_net_x16,
    coeff => slice1_y_net_x16,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x27,
    coeff_out => slice1_y_net_x25,
    taps_out => mult_p_net_x35
  );
  pol1_in3_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in3_tap3 
  port map (
    din => d1_q_net_x27,
    coeff => slice1_y_net_x25,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x28,
    coeff_out => slice1_y_net_x26,
    taps_out => mult_p_net_x36
  );
  pol1_in4_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in4_coeffs 
  port map (
    din => pol0_in3_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x9,
    coeff => register_q_net_x8
  );
  pol1_in4_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in4_first_tap 
  port map (
    din => delay1_q_net_x9,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x8,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x29,
    coeff_out => slice1_y_net_x28,
    taps_out => mult_p_net_x34
  );
  pol1_in4_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in4_last_tap 
  port map (
    din => d1_q_net_x24,
    coeff => slice1_y_net_x30,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x37
  );
  pol1_in4_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in4_tap2 
  port map (
    din => d1_q_net_x29,
    coeff => slice1_y_net_x28,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x30,
    coeff_out => slice1_y_net_x29,
    taps_out => mult_p_net_x38
  );
  pol1_in4_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in4_tap3 
  port map (
    din => d1_q_net_x30,
    coeff => slice1_y_net_x29,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x24,
    coeff_out => slice1_y_net_x30,
    taps_out => mult_p_net_x39
  );
  pol1_in5_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in5_coeffs 
  port map (
    din => pol0_in4_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x7,
    coeff => register_q_net_x6
  );
  pol1_in5_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in5_first_tap 
  port map (
    din => delay1_q_net_x7,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x6,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x23,
    coeff_out => slice1_y_net_x21,
    taps_out => mult_p_net_x29
  );
  pol1_in5_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in5_last_tap 
  port map (
    din => d1_q_net_x25,
    coeff => slice1_y_net_x23,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x30
  );
  pol1_in5_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in5_tap2 
  port map (
    din => d1_q_net_x23,
    coeff => slice1_y_net_x21,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x22,
    coeff_out => slice1_y_net_x22,
    taps_out => mult_p_net_x31
  );
  pol1_in5_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in5_tap3 
  port map (
    din => d1_q_net_x22,
    coeff => slice1_y_net_x22,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x25,
    coeff_out => slice1_y_net_x23,
    taps_out => mult_p_net_x32
  );
  pol1_in6_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in6_coeffs 
  port map (
    din => pol0_in5_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x8,
    coeff => register_q_net_x7
  );
  pol1_in6_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in6_first_tap 
  port map (
    din => delay1_q_net_x8,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x7,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x26,
    coeff_out => slice1_y_net_x24,
    taps_out => mult_p_net_x33
  );
  pol1_in6_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in6_last_tap 
  port map (
    din => d1_q_net,
    coeff => slice1_y_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x2
  );
  pol1_in6_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in6_tap2 
  port map (
    din => d1_q_net_x26,
    coeff => slice1_y_net_x24,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x0,
    coeff_out => slice1_y_net_x1,
    taps_out => mult_p_net_x1
  );
  pol1_in6_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in6_tap3 
  port map (
    din => d1_q_net_x0,
    coeff => slice1_y_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net,
    coeff_out => slice1_y_net_x0,
    taps_out => mult_p_net_x0
  );
  pol1_in7_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in7_coeffs 
  port map (
    din => pol0_in6_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net,
    coeff => register_q_net
  );
  pol1_in7_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in7_first_tap 
  port map (
    din => delay1_q_net,
    sync => delay_q_net_x12,
    coeffs => register_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x10,
    coeff_out => slice1_y_net,
    taps_out => mult_p_net
  );
  pol1_in7_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in7_last_tap 
  port map (
    din => d1_q_net_x6,
    coeff => slice1_y_net_x7,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x12
  );
  pol1_in7_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in7_tap2 
  port map (
    din => d1_q_net_x10,
    coeff => slice1_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x8,
    coeff_out => slice1_y_net_x8,
    taps_out => mult_p_net_x11
  );
  pol1_in7_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in7_tap3 
  port map (
    din => d1_q_net_x8,
    coeff => slice1_y_net_x8,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x6,
    coeff_out => slice1_y_net_x7,
    taps_out => mult_p_net_x10
  );
  pol1_in8_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in8_coeffs 
  port map (
    din => pol0_in7_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x2,
    coeff => register_q_net_x1
  );
  pol1_in8_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in8_first_tap 
  port map (
    din => delay1_q_net_x2,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x1,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x3,
    coeff_out => slice1_y_net_x6,
    taps_out => mult_p_net_x8
  );
  pol1_in8_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in8_last_tap 
  port map (
    din => d1_q_net_x11,
    coeff => slice1_y_net_x11,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x9
  );
  pol1_in8_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in8_tap2 
  port map (
    din => d1_q_net_x3,
    coeff => slice1_y_net_x6,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x12,
    coeff_out => slice1_y_net_x12,
    taps_out => mult_p_net_x17
  );
  pol1_in8_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in8_tap3 
  port map (
    din => d1_q_net_x12,
    coeff => slice1_y_net_x12,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x11,
    coeff_out => slice1_y_net_x11,
    taps_out => mult_p_net_x16
  );
  pol1_in9_coeffs : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in9_coeffs 
  port map (
    din => pol0_in8_net,
    sync => slice_y_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => delay1_q_net_x3,
    coeff => register_q_net_x2
  );
  pol1_in9_first_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in9_first_tap 
  port map (
    din => delay1_q_net_x3,
    sync => delay_q_net_x12,
    coeffs => register_q_net_x2,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x9,
    coeff_out => slice1_y_net_x10,
    taps_out => mult_p_net_x15
  );
  pol1_in9_last_tap : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in9_last_tap 
  port map (
    din => d1_q_net_x4,
    coeff => slice1_y_net_x5,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tap_out => mult_p_net_x14
  );
  pol1_in9_tap2 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in9_tap2 
  port map (
    din => d1_q_net_x9,
    coeff => slice1_y_net_x10,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x5,
    coeff_out => slice1_y_net_x9,
    taps_out => mult_p_net_x13
  );
  pol1_in9_tap3 : entity xil_defaultlib.pfb_fir_8192ch_core_pol1_in9_tap3 
  port map (
    din => d1_q_net_x5,
    coeff => slice1_y_net_x9,
    clk_1 => clk_net,
    ce_1 => ce_net,
    dout => d1_q_net_x4,
    coeff_out => slice1_y_net_x5,
    taps_out => mult_p_net_x7
  );
  scale_1_3 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x6,
    op => scale_1_3_op_net
  );
  convert_1_3 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_3_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_3_dout_net
  );
  scale_1_4 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x7,
    op => scale_1_4_op_net
  );
  convert_1_4 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_4_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_4_dout_net
  );
  scale_1_5 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x8,
    op => scale_1_5_op_net
  );
  convert_1_5 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_5_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_5_dout_net
  );
  scale_1_6 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x14,
    op => scale_1_6_op_net
  );
  convert_1_6 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_6_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_6_dout_net
  );
  scale_1_7 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x11,
    op => scale_1_7_op_net
  );
  convert_1_7 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_7_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_7_dout_net
  );
  scale_1_8 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x12,
    op => scale_1_8_op_net
  );
  convert_1_8 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_8_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_8_dout_net
  );
  scale_1_9 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x13,
    op => scale_1_9_op_net
  );
  convert_1_9 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_9_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_9_dout_net
  );
  scale_1_10 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x10,
    op => scale_1_10_op_net
  );
  convert_1_10 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_10_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_10_dout_net
  );
  scale_1_11 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x1,
    op => scale_1_11_op_net
  );
  convert_1_11 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_11_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_11_dout_net
  );
  scale_1_12 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x3,
    op => scale_1_12_op_net
  );
  convert_1_12 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_12_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_12_dout_net
  );
  scale_1_13 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x2,
    op => scale_1_13_op_net
  );
  convert_1_13 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_13_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_13_dout_net
  );
  scale_1_14 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net,
    op => scale_1_14_op_net
  );
  convert_1_14 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_14_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_14_dout_net
  );
  scale_1_15 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x0,
    op => scale_1_15_op_net
  );
  convert_1_15 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_15_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_15_dout_net
  );
  scale_1_16 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x4,
    op => scale_1_16_op_net
  );
  convert_1_16 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_16_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_16_dout_net
  );
  convert_1_1 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_1_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_1_dout_net
  );
  convert_1_2 : entity xil_defaultlib.pfb_fir_8192ch_core_xlconvert_pipeline 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 25,
    din_width => 26,
    dout_arith => 2,
    dout_bin_pt => 11,
    dout_width => 12,
    latency => 1,
    overflow => xlWrap,
    quantization => xlRoundBanker
  )
  port map (
    clr => '0',
    en => "1",
    din => scale_1_2_op_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_1_2_dout_net
  );
  delay1 : entity xil_defaultlib.pfb_fir_8192ch_core_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => sync_delay_q_net_x10,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net_x0
  );
  scale_1_1 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x9,
    op => scale_1_1_op_net
  );
  scale_1_2 : entity xil_defaultlib.sysgen_scale_a7fd99112f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    ip => addr3_s_net_x5,
    op => scale_1_2_op_net
  );
end structural;
-- Generated from Simulink block pfb_fir_8192ch_core_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_struct is
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
    clk_1 : in std_logic;
    ce_1 : in std_logic;
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
end pfb_fir_8192ch_core_struct;
architecture structural of pfb_fir_8192ch_core_struct is 
  signal pol0_in1_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in0_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in10_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in11_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in12_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in13_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in14_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in15_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in2_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in3_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in4_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in5_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in6_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in7_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in8_net : std_logic_vector( 8-1 downto 0 );
  signal pol0_in9_net : std_logic_vector( 8-1 downto 0 );
  signal convert_1_1_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_2_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_11_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_12_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_13_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_14_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_15_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_16_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_3_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_4_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_5_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_6_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_7_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_8_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_9_dout_net : std_logic_vector( 12-1 downto 0 );
  signal convert_1_10_dout_net : std_logic_vector( 12-1 downto 0 );
  signal sync_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice_y_net : std_logic_vector( 1-1 downto 0 );
begin
  pol0_in0_net <= pol0_in0;
  pol0_in1_net <= pol0_in1;
  pol0_in10_net <= pol0_in10;
  pol0_in11_net <= pol0_in11;
  pol0_in12_net <= pol0_in12;
  pol0_in13_net <= pol0_in13;
  pol0_in14_net <= pol0_in14;
  pol0_in15_net <= pol0_in15;
  pol0_in2_net <= pol0_in2;
  pol0_in3_net <= pol0_in3;
  pol0_in4_net <= pol0_in4;
  pol0_in5_net <= pol0_in5;
  pol0_in6_net <= pol0_in6;
  pol0_in7_net <= pol0_in7;
  pol0_in8_net <= pol0_in8;
  pol0_in9_net <= pol0_in9;
  pol0_out0 <= convert_1_1_dout_net;
  pol0_out1 <= convert_1_2_dout_net;
  pol0_out10 <= convert_1_11_dout_net;
  pol0_out11 <= convert_1_12_dout_net;
  pol0_out12 <= convert_1_13_dout_net;
  pol0_out13 <= convert_1_14_dout_net;
  pol0_out14 <= convert_1_15_dout_net;
  pol0_out15 <= convert_1_16_dout_net;
  pol0_out2 <= convert_1_3_dout_net;
  pol0_out3 <= convert_1_4_dout_net;
  pol0_out4 <= convert_1_5_dout_net;
  pol0_out5 <= convert_1_6_dout_net;
  pol0_out6 <= convert_1_7_dout_net;
  pol0_out7 <= convert_1_8_dout_net;
  pol0_out8 <= convert_1_9_dout_net;
  pol0_out9 <= convert_1_10_dout_net;
  sync_net <= sync;
  sync_out <= delay1_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  pfb_fir_real : entity xil_defaultlib.pfb_fir_8192ch_core_pfb_fir_real 
  port map (
    sync => slice_y_net,
    pol1_in1 => pol0_in0_net,
    pol1_in2 => pol0_in1_net,
    pol1_in3 => pol0_in2_net,
    pol1_in4 => pol0_in3_net,
    pol1_in5 => pol0_in4_net,
    pol1_in6 => pol0_in5_net,
    pol1_in7 => pol0_in6_net,
    pol1_in8 => pol0_in7_net,
    pol1_in9 => pol0_in8_net,
    pol1_in10 => pol0_in9_net,
    pol1_in11 => pol0_in10_net,
    pol1_in12 => pol0_in11_net,
    pol1_in13 => pol0_in12_net,
    pol1_in14 => pol0_in13_net,
    pol1_in15 => pol0_in14_net,
    pol1_in16 => pol0_in15_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    sync_out => delay1_q_net,
    pol1_out1 => convert_1_1_dout_net,
    pol1_out2 => convert_1_2_dout_net,
    pol1_out3 => convert_1_3_dout_net,
    pol1_out4 => convert_1_4_dout_net,
    pol1_out5 => convert_1_5_dout_net,
    pol1_out6 => convert_1_6_dout_net,
    pol1_out7 => convert_1_7_dout_net,
    pol1_out8 => convert_1_8_dout_net,
    pol1_out9 => convert_1_9_dout_net,
    pol1_out10 => convert_1_10_dout_net,
    pol1_out11 => convert_1_11_dout_net,
    pol1_out12 => convert_1_12_dout_net,
    pol1_out13 => convert_1_13_dout_net,
    pol1_out14 => convert_1_14_dout_net,
    pol1_out15 => convert_1_15_dout_net,
    pol1_out16 => convert_1_16_dout_net
  );
  slice : entity xil_defaultlib.pfb_fir_8192ch_core_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 0,
    x_width => 32,
    y_width => 1
  )
  port map (
    x => sync_net,
    y => slice_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core_default_clock_driver is
  port (
    pfb_fir_8192ch_core_sysclk : in std_logic;
    pfb_fir_8192ch_core_sysce : in std_logic;
    pfb_fir_8192ch_core_sysclr : in std_logic;
    pfb_fir_8192ch_core_clk1 : out std_logic;
    pfb_fir_8192ch_core_ce1 : out std_logic
  );
end pfb_fir_8192ch_core_default_clock_driver;
architecture structural of pfb_fir_8192ch_core_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => pfb_fir_8192ch_core_sysclk,
    sysce => pfb_fir_8192ch_core_sysce,
    sysclr => pfb_fir_8192ch_core_sysclr,
    clk => pfb_fir_8192ch_core_clk1,
    ce => pfb_fir_8192ch_core_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity pfb_fir_8192ch_core is
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
end pfb_fir_8192ch_core;
architecture structural of pfb_fir_8192ch_core is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "pfb_fir_8192ch_core,sysgen_core_2019_1,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k325t,speed=-3,package=fbg676,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=262144,addsub=48,concat=16,constant=240,convert=16,counter=112,delay=177,logical=48,mult=64,mux=48,register=16,reinterpret=192,relational=96,scale=16,slice=97,spram=48,sprom=64,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  pfb_fir_8192ch_core_default_clock_driver : entity xil_defaultlib.pfb_fir_8192ch_core_default_clock_driver 
  port map (
    pfb_fir_8192ch_core_sysclk => clk,
    pfb_fir_8192ch_core_sysce => '1',
    pfb_fir_8192ch_core_sysclr => '0',
    pfb_fir_8192ch_core_clk1 => clk_1_net,
    pfb_fir_8192ch_core_ce1 => ce_1_net
  );
  pfb_fir_8192ch_core_struct : entity xil_defaultlib.pfb_fir_8192ch_core_struct 
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
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
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
