VLOG	= ncverilog
TB1		= testbench.v
TB2		= testbench2.v
SRC		= fifo.v
SYNSRC	= fifo_syn.v
DEFSDF	= +define+SDF
CELLLIB = /theda21_2/CBDK_TSMC018_Arm_f1.0/CIC/Verilog/tsmc18.v
SRAM	= dpsram256x16.v
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