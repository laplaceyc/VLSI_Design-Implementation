VLOG	= ncverilog
SRC		= stimulate.v GCD.v
VLOGARG = +access+r
TMPFILE = *.log ncverilog.key nWavelog INCA_libs
DBFILE	= *.fsdb *.vcd *.bak
RM		= -rm -rf

all :: sim

sim :
	$(VLOG) $(SRC) $(VLOGARG)

clean :
	$(RM) $(TMPFILE)
	
veryclean :
	$(RM) $(TMPFILE) $(DBFILE)