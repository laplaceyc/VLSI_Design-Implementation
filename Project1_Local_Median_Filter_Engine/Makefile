VLOG	= ncverilog
TB1		= testfixture1.v
TB2		= testfixture2.v
SRC		= LMFE.v filter_ctrl.v lmfe_med49.v
SYNSRC	= LMFE_syn.v
DEFSDF	= +define+SDF
CELLLIB = /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v
SRAM	= sram_1024x8_t13.v
RTL		= +nospecify +notimingchecks
VLOGARG = +access+r
TMPFILE = *.log ncverilog.key nWavelog INCA_libs
DBFILE	= *.fsdb *.vcd *.bak
RM		= -rm -rf

all :: sim1

sim1 :
	$(VLOG) $(RTL) $(TB1) $(SRC) $(SRAM) $(VLOGARG)

sim2 :
	$(VLOG) $(RTL) $(TB2) $(SRC) $(SRAM) $(VLOGARG)

psyn1 :
	$(VLOG) $(TB1) $(SYNSRC) -v $(CELLLIB) $(DEFSDF) $(VLOGARG)
	
psyn2 :
	$(VLOG) $(TB2) $(SYNSRC) -v $(CELLLIB) $(DEFSDF) $(VLOGARG)
	
clean :
	$(RM) $(TMPFILE)
	
veryclean :
	$(RM) $(TMPFILE) $(DBFILE)