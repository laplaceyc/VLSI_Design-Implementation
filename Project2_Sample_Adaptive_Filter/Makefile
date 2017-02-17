VLOG	= ncverilog
TB1		= testfixture1.v
TB2		= testfixture2.v
TB3		= testfixture3.v
SRC		= SAO.v
SYNSRC	= SAO_pr.v
DEFSDF	= +define+SDF
CELLLIB = /theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13_neg.v
SRAM	= sram_16384x8.v
RTL		= +nospecify +notimingchecks
VLOGARG = +access+rw
TMPFILE = *.log ncverilog.key nWavelog INCA_libs
DBFILE	= *.fsdb *.vcd *.bak
RM		= -rm -rf

all :: sim1

sim1 :
	$(VLOG) $(RTL) $(TB1) $(SRC) $(SRAM) $(VLOGARG)
 
sim1_all :
	$(VLOG) $(RTL) $(TB1) $(SRC) $(SRAM) +define+all $(VLOGARG)

sim2 :
	$(VLOG) $(RTL) $(TB2) $(SRC) $(SRAM) $(VLOGARG)
 
sim2_all :
	$(VLOG) $(RTL) $(TB2) $(SRC) $(SRAM) +define+all $(VLOGARG)
	
sim3 :
	$(VLOG) $(RTL) $(TB3) $(SRC) $(SRAM) $(VLOGARG)

sim3_all :
	$(VLOG) $(RTL) $(TB3) $(SRC) $(SRAM) +define+all $(VLOGARG)

psyn1 :
	$(VLOG) +ncmaxdelays $(TB1) $(SYNSRC) $(SRAM) -v $(CELLLIB) $(DEFSDF) $(VLOGARG)

psyn1_all :
	$(VLOG) +ncmaxdelays $(TB1) $(SYNSRC) $(SRAM) -v $(CELLLIB) $(DEFSDF) +define+all $(VLOGARG)
  	
psyn2 :
	$(VLOG) +ncmaxdelays $(TB2) $(SYNSRC) $(SRAM) -v $(CELLLIB) $(DEFSDF) $(VLOGARG)
 
psyn2_all :
	$(VLOG) +ncmaxdelays $(TB2) $(SYNSRC) $(SRAM) -v $(CELLLIB) $(DEFSDF) +define+all $(VLOGARG)
 
psyn3 :
	$(VLOG) +ncmaxdelays $(TB3) $(SYNSRC) $(SRAM) -v $(CELLLIB) $(DEFSDF) $(VLOGARG)	

psyn3_all :
	$(VLOG) +ncmaxdelays $(TB3) $(SYNSRC) $(SRAM) -v $(CELLLIB) $(DEFSDF) +define+all $(VLOGARG)	
 
clean :
	$(RM) $(TMPFILE)
	
veryclean :
	$(RM) $(TMPFILE) $(DBFILE)