VLOG	= ncverilog
SRC		= lab03_header.v lab03_pingpong_t.v lab03_pingpong.v
PATTERN_COUNT = 1024
WIDTH = 4
PERIOD = 8
DELAY = 1
DEBUG = 1
UPPER_BOUND = 15
LOWER_BOUND = 0
FSDB = Majority.fsdb
PATTERN = pp02_w8_pat.dat
GOLDEN = pp02_w8_gold.dat

VLOGARG = +access+r \
	  +define+PATTERN_COUNT=${PATTERN_COUNT} \
          +define+WIDTH=${WIDTH} \
	  +define+PERIOD=${PERIOD} \
	  +define+DELAY=${DELAY} \
	  +define+DEBUG=${DEBUG} \
	  +define+UPPER_BOUND=${UPPER_BOUND} \
          +define+LOWER_BOUND=${LOWER_BOUND} \
          +define+FSDB="\"${FSDB}"\" \
          +define+PATTERN="\"${PATTERN}"\" \
          +define+GOLDEN="\"${GOLDEN}"\" 
					
					 
					
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
