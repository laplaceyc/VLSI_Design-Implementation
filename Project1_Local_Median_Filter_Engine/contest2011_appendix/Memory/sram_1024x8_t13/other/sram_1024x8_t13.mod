/*
 *      CONFIDENTIAL AND PROPRIETARY SOFTWARE/DATA OF ARTISAN COMPONENTS, INC.
 *      
 *      Copyright (c) 2011 Artisan Components, Inc.  All Rights Reserved.
 *      
 *      Use of this Software/Data is subject to the terms and conditions of
 *      the applicable license agreement between Artisan Components, Inc. and
 *      Taiwan Semiconductor Manufacturing Company Ltd..  In addition, this Software/Data
 *      is protected by copyright law and international treaties.
 *      
 *      The copyright notice(s) in this Software/Data does not indicate actual
 *      or intended publication of this Software/Data.
 *      name:			SRAM-SP-HS-HC SRAM Generator
 *           			TSMC CL013G Process
 *      version:		2004Q2V1
 *      comment:		
 *      configuration:	 -instname "sram_1024x8_t13" -words 1024 -bits 8 -frequency 100 -ring_width 8 -mux 16 -drive 6 -write_mask off -wp_size 8 -redundancy off -redundancy_bits 1 -top_layer met8 -power_type rings -horiz met3 -vert met4 -cust_comment "" -left_bus_delim "[" -right_bus_delim "]" -pwr_gnd_rename "VDD:VDD,GND:VSS" -prefix "" -pin_space 0.0 -name_case upper -check_instname on -diodes on -inside_ring_type GND -fuse_encoding encoded -insert_fuse yes -fusebox_name FUSE -rtl_style mux
 *
 *      Synopsys model for Synchronous Single-Port Ram
 *
 *      Library Name:   aci
 *      Instance Name:  sram_1024x8_t13
 *      Words:          1024
 *      Word Width:     8
 *      Mux:            16
 *      Pipeline:       No
 *
 *      Creation Date:  2011-03-03 01:30:08Z
 *      Version:        2004Q2V1
 *
 *      Verified With: Synopsys Primetime
 *
 *      Modeling Assumptions: This library contains a black box description
 *          for a memory element.  At the library level, a
 *          default_max_transition constraint is set to the maximum
 *          characterized input slew.  Each output has a max_capacitance
 *          constraint set to the highest characterized output load.
 *          Different modes are defined in order to disable false path
 *          during the specific mode activation when doing static timing analysis. 
 *
 *
 *      Modeling Limitations: This stamp does not include power information.
 *          Due to limitations of the stamp modeling, some data reduction was
 *          necessary.  When reducing data, minimum values were chosen for the
 *          fast case corner and maximum values were used for the typical and
 *          best case corners.  It is recommended that critical timing and
 *          setup and hold times be checked at all corners.
 *
 *      Known Bugs: None.
 *
 *      Known Work Arounds: N/A
 *
 */

MODEL
MODEL_VERSION "1.0";
DESIGN "sram_1024x8_t13";
OUTPUT Q[7:0];
INPUT A[9:0];
INPUT CEN;
INPUT CLK;
INPUT D[7:0];
INPUT WEN;
MODE mem_mode =	Mission  COND(CEN==0),
                Inactive COND(CEN==1);


tch_tas: SETUP(POSEDGE) A CLK MODE(mem_mode=Mission);
tch_tah: HOLD(POSEDGE) A CLK MODE(mem_mode=Mission);
tch_tcs: SETUP(POSEDGE) CEN CLK MODE(mem_mode=Mission);
tch_tch: HOLD(POSEDGE) CEN CLK MODE(mem_mode=Mission);
tch_tds: SETUP(POSEDGE) D CLK MODE(mem_mode=Mission);
tch_tdh: HOLD(POSEDGE) D CLK MODE(mem_mode=Mission);
tch_tws: SETUP(POSEDGE) WEN CLK MODE(mem_mode=Mission);
tch_twh: HOLD(POSEDGE) WEN CLK MODE(mem_mode=Mission);
period_tcyc: PERIOD(POSEDGE) CLK ;
tpw_tckh: WIDTH(POSEDGE) CLK ;
tpw_tckl: WIDTH(NEGEDGE) CLK ;
dly_tya: DELAY(POSEDGE) CLK Q  ;
ENDMODEL
