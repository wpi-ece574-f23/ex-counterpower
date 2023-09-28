power:
	BASENAME=bcounter32 \
		VCD=../glsim/trace.vcd \
		FRAME_COUNT=99 \
		TIMINGPATH=/opt/cadence/libraries/gsclib045_all_v4.7/gsclib045/timing \
		TIMINGLIB=slow_vdd1v0_basicCells.lib \
		VERILOG='../layout/out/design.v' \
		SPEF='../layout/out/design_default_rc.spef' \
		SDF='../layout/synout/bcounter32_delays.sdf' \
		SDC='../layout/synout/bcounter32_constraints.sdc' \
		joules -files joules_script.tcl

clean:
	rm -rf *~ *.db *.sdb fv joules_work *.data *.report *.png
