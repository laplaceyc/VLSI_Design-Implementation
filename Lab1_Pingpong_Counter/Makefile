VLOG = ncverilog
SRC  = ‐f pingpong.f
VLOGARG = +access+r
TMPFILE = *.log verilog.key nWaveLog
DBFILE = *.fsdb *.vcd *.bak
RM = ‐rm ‐rf
all :: sim
sim :
	$(VLOG) $(SRC) $(VLOGARG)
check :
	$(VLOG) ‐c $(SRC)
clean :
	$(RM) $(TMPFILE)
veryclean :
	$(RM) $(TMPFILE) $(DBFILE)
	
