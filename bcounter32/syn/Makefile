all: syn

ifdef CPGLOBAL
CPTHISRUN=$(CPGLOBAL)
else
CPTHISRUN=2
endif

syn:
	BASENAME=bcounter32 \
		CLOCKPERIOD=$(CPTHISRUN) \
		TIMINGPATH=/opt/cadence/libraries/gsclib045_all_v4.7/gsclib045/timing \
		TIMINGLIB=slow_vdd1v0_basicCells.lib \
		VERILOG='../rtl/bcounter32.v' \
		genus -f genus_script.tcl

clean:
	rm -rf outputs reports genus.log* genus.cmd* *~ fv
