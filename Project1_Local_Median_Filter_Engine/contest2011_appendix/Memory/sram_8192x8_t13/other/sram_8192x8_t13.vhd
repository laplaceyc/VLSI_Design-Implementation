--------------------------------------------------------------------------
--      CONFIDENTIAL AND PROPRIETARY SOFTWARE/DATA OF ARTISAN COMPONENTS, INC.
--      
--      Copyright (c) 2011 Artisan Components, Inc.  All Rights Reserved.
--      
--      Use of this Software/Data is subject to the terms and conditions of
--      the applicable license agreement between Artisan Components, Inc. and
--      Taiwan Semiconductor Manufacturing Company Ltd..  In addition, this Software/Data
--      is protected by copyright law and international treaties.
--      
--      The copyright notice(s) in this Software/Data does not indicate actual
--      or intended publication of this Software/Data.
--      name:			SRAM-SP-HS-HC SRAM Generator
--           			TSMC CL013G Process
--      version:		2004Q2V1
--      comment:		
--      configuration:	 -instname "sram_8192x8_t13" -words 8192 -bits 8 -frequency 100 -ring_width 4 -mux 32 -drive 6 -write_mask off -wp_size 8 -redundancy off -redundancy_bits 1 -top_layer met5 -power_type rings -horiz met3 -vert met4 -cust_comment "" -left_bus_delim "[" -right_bus_delim "]" -pwr_gnd_rename "VDD:VDD,GND:VSS" -prefix "" -pin_space 0.0 -name_case upper -check_instname on -diodes on -inside_ring_type GND -fuse_encoding encoded -insert_fuse yes -fusebox_name FUSE -rtl_style mux
--
--      VHDL model for Synchronous Single-Port Ram
--
--      Instance:       sram_8192x8_t13
--      Address Length: 8192
--      Word Width:     8
--      Pipeline:       No
--
--      Creation Date:  2011-03-15 05:39:31Z
--      Version:        2004Q2V1
--
--      Verified With:  Model Technology VCOM V-System VHDL
--			Version 5.2c
--
--      Modeling Assumptions: This model supports full gate-level simulaton
--          including proper x-handling and timing check behavior.  It is
--          VITAL_LEVEL1 compliant.  Unit delay timing is included in the
--          model. Back-annotation of SDF (v2.1) is supported.  SDF can be
--          created utilyzing the delay calculation views provided with this
--          generator and supported delay calculators.  For netlisting
--          simplicity, buses are not exploded.  All buses are modeled
--          [MSB:LSB].  To operate properly, this model must be used with the
--          Artisan's Vhdl packages.
--
--      Modeling Limitations: To be compatible with Synopsys/VSS in term of
--	    SDF back-annotation, this model has to be Vital Level0 compliant.
--	    This feature may result in degraded performances.
--
--      Known Bugs: None.
--
--      Known Work Arounds: N/A
--------------------------------------------------------------------------
-------------------
use std.all;
LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.VITAL_timing.all;
use IEEE.VITAL_primitives.all;
use WORK.vlibs.all; 

Package sram_8192x8_t13_pkgs is
  component rdwr_sram_8192x8_t13
    generic(
	TimingChecksOn: BOOLEAN := TRUE;
	tperiod_CLK  : VitalDelayType;
	tpw_CLK_negedge: VitalDelayType;
	tpw_CLK_posedge: VitalDelayType;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_A: VitalDelayArrayType01(12 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(7 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));
	tpd_CLK_Q	: VitalDelayArrayType01(7 downto 0) := (others => (1.0 ns, 1.0 ns));
	PortName	: string
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic;
	A: in std_logic_vector(12 downto 0);
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0);
	Read: out std_logic:='0';
	Write: out std_logic:='0';
	GtpRst  : in std_logic;
	Am  : out std_logic_vector;
	Dm  : out std_logic_vector;
	Qi  : in std_logic_vector
    );
end component; 
 component sram_8192x8_t13
    generic(
	tperiod_CLK  : VitalDelayType := 2.000 ns;
	tpw_CLK_negedge: VitalDelayType := 1.000 ns;
	tpw_CLK_posedge: VitalDelayType := 1.000 ns;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_A: VitalDelayArrayType01(12 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(7 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));

	tpd_CLK_Q: VitalDelayArrayType01(7 downto 0):=(others=>(1.0 ns,1.0 ns));
	TimingChecksOn: BOOLEAN := TRUE
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic;
	A: in std_logic_vector(12 downto 0);
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0)
    );
 end component; 
End sram_8192x8_t13_pkgs;
-------------------
use std.all;
LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.VITAL_timing.all;
use IEEE.VITAL_primitives.all;
use WORK.vlibs.all; 
use WORK.lib_cells_pkgs.all;
use WORK.sram_8192x8_t13_pkgs.all;

  entity rdwr_sram_8192x8_t13 is
    generic(
	TimingChecksOn: BOOLEAN := TRUE;
	tperiod_CLK  : VitalDelayType;
	tpw_CLK_negedge: VitalDelayType;
	tpw_CLK_posedge: VitalDelayType;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_A: VitalDelayArrayType01(12 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(7 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));
	tpd_CLK_Q	: VitalDelayArrayType01(7 downto 0) := (others => (1.0 ns, 1.0 ns));
	PortName	: string
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic;
	A: in std_logic_vector(12 downto 0);
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0);
	Read: out std_logic:='0';
	Write: out std_logic:='0';
	GtpRst  : in std_logic;
	Am  : out std_logic_vector;
	Dm  : out std_logic_vector;
	Qi  : in std_logic_vector
    );
    attribute VITAL_LEVEL1 of rdwr_sram_8192x8_t13 : entity is TRUE;
end rdwr_sram_8192x8_t13;

-------------- -------------- -------------- -------------- --------------
architecture BEHAVIORAL of rdwr_sram_8192x8_t13 is
  constant ClkPort	: string:=cat("CLK",PortName);
  constant InstPort	: string:="sram_8192x8_t13";
  signal ANi,MANi	: std_logic_vector(A'range);
  signal ANVio 		: std_logic_vector(A'range);
  signal WENVio, WENi 	: std_logic;
  signal WENib	 	: std_logic;
  signal DTP_INT 	: std_logic;
  signal CENi           : std_logic;
  signal CENib		: std_logic;
  signal CENVio		: std_logic;
  signal CLK_INT	: std_logic;
  signal GTP_INT	: std_logic:='0';
  signal GTP_RdWr	: std_logic:='0';
  signal Di,MDi		: std_logic_vector(D'range);
  signal DVio		: std_logic_vector(D'range);

--------------
begin
--------------
TPW_CLK: TPwCell   generic map(tipd_clk=>tipd_CLK, tperiod_clk=>tperiod_CLK,
                                tpw_clk_posedge=>tpw_CLK_posedge, tpw_clk_negedge=>tpw_CLK_negedge,
				TimingChecksOn=>TimingChecksOn, TestSignalName=>ClkPort, HeaderMsg=>InstPort)
                    port map(out0=>CLK_INT, clk=>CLK);
--------------
TCH_WEN: TChCellEdges  generic map(tipd_in0=>tipd_WEN, tsetup_in0_clk_posedge_posedge=>tsetup_WEN_CLK_posedge_posedge,
                                thold_in0_clk_posedge_posedge=>thold_WEN_CLK_posedge_posedge, 
				tsetup_in0_clk_negedge_posedge=>tsetup_WEN_CLK_negedge_posedge,
                                thold_in0_clk_negedge_posedge=>thold_WEN_CLK_negedge_posedge, 	
                                TestSignalName=>ClkPort, RefSignalName=>cat("WEN",PortName), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>WEN, clk=>GTP_INT, Violation=>WENVio,out0=>WENi);
--------------
TCH_CEN: TChCellEdges  generic map(tipd_in0=>tipd_CEN, tsetup_in0_clk_posedge_posedge=>tsetup_CEN_CLK_posedge_posedge,
                                thold_in0_clk_posedge_posedge=>thold_CEN_CLK_posedge_posedge, 
				tsetup_in0_clk_negedge_posedge=>tsetup_CEN_CLK_negedge_posedge,
                                thold_in0_clk_negedge_posedge=>thold_CEN_CLK_negedge_posedge, 
                                TestSignalName=>ClkPort, RefSignalName=>cat("CEN",PortName), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>CEN, clk=>CLK_INT, Violation=>CENVio,out0=>CENi);
--------------
TA_A_UTI: for i in 0 to 12 generate
TCH_A: TChCellEdges  generic map(tipd_in0=>tipd_A(i), tsetup_in0_clk_posedge_posedge=>tsetup_A_CLK_posedge_posedge(i),
                                thold_in0_clk_posedge_posedge=>thold_A_CLK_posedge_posedge(i), 
				tsetup_in0_clk_negedge_posedge=>tsetup_A_CLK_negedge_posedge(i),
                                thold_in0_clk_negedge_posedge=>thold_A_CLK_negedge_posedge(i),
                                TestSignalName=>ClkPort, RefSignalName=>icat("A","",i), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>A(i), clk=>GTP_INT, Violation=>ANVio(i),out0=>MANi(i));
end generate;                      

--------------
D_UTI: for i in 0 to 7 generate
 TCH_D: TChCellEdges  generic map(tipd_in0=>tipd_D(i), tsetup_in0_clk_posedge_posedge=>tsetup_D_CLK_posedge_posedge(i),
                                thold_in0_clk_posedge_posedge=>thold_D_CLK_posedge_posedge(i), 
				tsetup_in0_clk_negedge_posedge=>tsetup_D_CLK_negedge_posedge(i),
                                thold_in0_clk_negedge_posedge=>thold_D_CLK_negedge_posedge(i),
                                TestSignalName=>ClkPort, RefSignalName=>icat("D","",i), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>D(i), clk=>DTP_INT, Violation=>DVio(i),out0=>MDi(i));

  Q_AMPS: buf	     generic map(tpd_in0_out0=>tpd_CLK_Q(i))
                     port map(in0=>Qi(i), out0=>Q(i));
end generate;      

--------------
GTP : process(GtpRst, CLK_INT, CENVio)
 Begin
  if((GtpRst'event and GtpRst='0' and CLK_INT /= 'X') or (CLK_INT'event and CLK_INT='0')) then
    GTP_INT <= '0'; 
    DTP_INT <= '0';
  elsif((CENVio='X') or (CLK_INT'event and CLK_INT='X' and CENi = '0')) then
    GTP_INT <= 'X';
    DTP_INT <= 'X';
  elsif(CLK_INT'event and CLK_INT='1') then
    GTP_INT <= (CLK_INT and CENib);
   DTP_INT <= (CLK_INT and CENib and WENib);
  end if;
 End Process;
--------------
  ANi <= not(MANi);
  CENib<= not(CENi);
  WENib<= not(WENi);
  Di  <= MDi;
  GTP_RdWr <= GTP_INT;

--------------
PROCA : process(GTP_RdWr, ANVio, DVio, WENVio)
  variable AddVio, DataVio: boolean;
  variable Rd, Wr : std_logic:='0';
  variable AddI  : std_logic_vector (12 downto 0) ;
	----------------------------------------------------------------------
  begin
    DataVio:=Is_X(DVio); AddVio:=Is_X(ANVio);
    Rd:='0'; Wr:='0';
 
    if(AddVio) then AddI:=(others=>'X');
    else            AddI:=not(ANi);
    end if;

    if(WENVio'event) then
	if(CENi='0' and WENVio='X') then Wr:='X'; end if;
    elsif((GTP_RdWr'last_value/='X' and GTP_RdWr'event) or AddVio or DataVio) then
	case GTP_RdWr is
	    when '1' => 		-- valid rising edge
		if(WENi='0') then Wr:='1';
		elsif(WENi='1') then Rd:='1';
		else Wr:='X'; -- UX
		end if;
	    when 'U'|'X' =>
		if (CENi='X') then
		  if (WENi='1') then Rd:='X';
		  else Wr:='X'; end if;
		elsif(CLK_INT='X') then
		  AddI:= (others => 'X');
		  Wr:='X';
		else
		  Wr:='X';
		end if;
	    when others =>  null;
	end case;
    end if;

    Read<=Rd; Write<=Wr;
    if(Wr/='0' or Rd/='0') then
	Am<=AddI; Dm<=MDi;
    end if;
-- 
  end process PROCA ;

--------------
End Behavioral;

--------------
-------------------
use std.all;
LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.VITAL_timing.all;
use IEEE.VITAL_primitives.all;
use WORK.vlibs.all; 
use WORK.lib_cells_pkgs.all;
use WORK.sram_8192x8_t13_pkgs.all;

  entity sram_8192x8_t13 is
    generic(
	tperiod_CLK  : VitalDelayType := 2.000 ns;
	tpw_CLK_negedge: VitalDelayType := 1.000 ns;
	tpw_CLK_posedge: VitalDelayType := 1.000 ns;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_A: VitalDelayArrayType01(12 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(7 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(12 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(7 downto 0):=(others=>(0.500 ns));

	tpd_CLK_Q: VitalDelayArrayType01(7 downto 0):=(others=>(1.0 ns,1.0 ns));
	TimingChecksOn: BOOLEAN := TRUE
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic;
	A: in std_logic_vector(12 downto 0);
	D: in std_logic_vector(7 downto 0);
	Q: out std_logic_vector(7 downto 0)
    );
    attribute VITAL_LEVEL1 of sram_8192x8_t13 : entity is TRUE;
end sram_8192x8_t13;

-----------------------------------------------------------------------------
architecture Structural of sram_8192x8_t13 is
  signal MEM: MEM_TYPE(8191 downto 0, 7 downto 0);
  signal gnd: std_logic:='0';
  signal gndA: std_logic_vector(12 downto 0):=(others=>'0');
  signal gndD: std_logic_vector(7 downto 0):=(others=>'0');
  signal Read, Write: std_logic;
  signal GtpRst, BusyWr, BusyRd: std_logic:='0';
  signal Am: std_logic_vector(12 downto 0);
  signal Dm, Qi: std_logic_vector(7 downto 0);

Begin

----------
-- Memory Read/Write Cycles. BusyWr/Rd='X': Timing Violation on Control signals.
-- BusyWr/Rd='1': Valid Wr/Rd Cycle
----------
  WR_SAME_LOC :process (BusyWr, BusyRd, Am, Dm)
  variable contention : boolean := false;
  variable NQi: std_logic_vector(Dm'range);
  begin
      if(BusyWr='X') then
	  NQi:=(others=>'X');
	  WRITE_MEM(Am, NQi, MEM);	--  Violations
	  Qi<=(others=>'X');
      elsif(BusyRd='X') then
	  Qi<=(others=>'X');
      elsif(BusyWr='1') then 		--  Valid Write Cycle
	  WRITE_MEM(Am, Dm, MEM, Contention);
	  if(Contention) then Qi<=(others=>'X');
	  else Qi<=Dm; end if;
      elsif(BusyRd='1') then 		-- Valid Read Cycle
	  READ_MEM_NEW(Am, NQi, MEM);
	  Qi<=NQi;
      end if;
  end process WR_SAME_LOC;
                   

  BusyRdWr: process(Write, Read)
  Begin
      if(Write'event and Write/='0') then
	  BusyWr<=Write, '0' after 2.0 ns;
	  GtpRst<='1', '0' after 2.0 ns;
      end if;
      if(Read'event and Read/='0') then
	  BusyRd<=Read, '0' after 2.0 ns;
	  GtpRst<='1', '0' after 2.0 ns;
      end if;
  end process BusyRdWR;


  MemPort: rdwr_sram_8192x8_t13
    generic map(
	tipd_CLK=>tipd_CLK,
	tipd_CEN=>tipd_CEN,
	tipd_WEN=>tipd_WEN,
	tipd_A=>tipd_A,
	tipd_D=>tipd_D,
	tsetup_CEN_CLK_posedge_posedge=>tsetup_CEN_CLK_posedge_posedge,
	tsetup_CEN_CLK_negedge_posedge=>tsetup_CEN_CLK_negedge_posedge,
	tsetup_WEN_CLK_posedge_posedge=>tsetup_WEN_CLK_posedge_posedge,
	tsetup_WEN_CLK_negedge_posedge=>tsetup_WEN_CLK_negedge_posedge,
	tsetup_A_CLK_posedge_posedge=>tsetup_A_CLK_posedge_posedge,
	tsetup_A_CLK_negedge_posedge=>tsetup_A_CLK_negedge_posedge,
	tsetup_D_CLK_posedge_posedge=>tsetup_D_CLK_posedge_posedge,
	tsetup_D_CLK_negedge_posedge=>tsetup_D_CLK_negedge_posedge,
	thold_CEN_CLK_posedge_posedge=>thold_CEN_CLK_posedge_posedge,
	thold_CEN_CLK_negedge_posedge=>thold_CEN_CLK_negedge_posedge,
	thold_WEN_CLK_posedge_posedge=>thold_WEN_CLK_posedge_posedge,
	thold_WEN_CLK_negedge_posedge=>thold_WEN_CLK_negedge_posedge,
	thold_A_CLK_posedge_posedge=>thold_A_CLK_posedge_posedge,
	thold_A_CLK_negedge_posedge=>thold_A_CLK_negedge_posedge,
	thold_D_CLK_posedge_posedge=>thold_D_CLK_posedge_posedge,
	thold_D_CLK_negedge_posedge=>thold_D_CLK_negedge_posedge,
	tperiod_CLK => tperiod_CLK,
	tpw_CLK_negedge => tpw_CLK_negedge,
	tpw_CLK_posedge => tpw_CLK_posedge,
	tpd_CLK_Q=>tpd_CLK_Q, 
	PortName => "",
	TimingChecksOn => TimingChecksOn
    )
    port map ( 
	Q => Q,
	CLK => CLK,
	CEN => CEN,
	WEN => WEN,
	A => A,
	D => D,
	Read => Read,
	Write => Write,
	GtpRst => GtpRst,
	AM => Am,
	DM => Dm,
	Qi => Qi
    );

End Structural;
