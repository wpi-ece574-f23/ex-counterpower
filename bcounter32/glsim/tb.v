module tb();
   reg 	      clk, reset;
   wire [31:0] q;
   
   bcounter32 dut(.clk(clk), .reset(reset), .q(q));
   
`ifdef USE_SDF
   initial
     begin
        $sdf_annotate("../layout/synout/bcounter32_delays.sdf",tb.dut,,"sdf.log","MAXIMUM");

     end
`endif

   always
     begin
	clk = 1'b0;
	#5;
	clk = 1'b1;
	#5;
     end
   
   initial
     begin
	
	$dumpfile("trace.vcd");
	$dumpvars(0, tb);
	
	reset = 1'b1;
	repeat (3) @(posedge clk);
	
	reset = 1'b0;

//	$dumpoff;
//	repeat (32'hFFFFF0)
//	  @(posedge clk);

	$dumpon;	
	repeat (50) 
	  begin
	     $display("%x", q);
	     @(posedge clk);
	  end
	
	$finish;
     end
   
endmodule
