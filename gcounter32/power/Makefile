power:
	BASENAME=bcounter32 \
		VCD=../sim/trace.vcd \
		FRAME_COUNT=99 \
		TIMINGPATH=/opt/cadence/libraries/gsclib045_all_v4.7/gsclib045/timing \
		TIMINGLIB=slow_vdd1v0_basicCells.lib \
		VERILOG='../rtl/bcounter32.v' \
		SDC='../constraints/constraints_clk.sdc' \
		joules -files joules_script.tcl

clean:
	rm -rf *~ *.db *.sdb fv joules_work *.data *.report *.png
