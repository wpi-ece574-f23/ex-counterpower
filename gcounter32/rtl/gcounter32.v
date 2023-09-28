module gcounter32(
		input 		   clk, reset,
		output wire [31:0] q
		);
   
   reg [31:0] cnt, cnt_next;
   reg 	      t, t_next;
   
   always @(posedge clk)
     begin
   	if (reset)
   	  begin
   	     t <= 1'b1;
   	     cnt <= 32'b0;
   	  end
   	else
   	  begin
   	     t <= t_next;
   	     cnt <= cnt_next;
   	  end
     end
   
   integer i;
   reg [31:0] v;
   
   always @(*)
     begin
   	t_next = ~t;
	
   	cnt_next[0]  = (1'h1 == t) ? ~cnt[0] : cnt[0];
   	cnt_next[1]  = (2'h2 == {cnt[0],t}) ? ~cnt[1] : cnt[1];
   	cnt_next[2]  = (3'h4 == {cnt[1:0],t}) ? ~cnt[2] : cnt[2];
   	cnt_next[3]  = (4'h8 == {cnt[2:0],t}) ? ~cnt[3] : cnt[3];
   	cnt_next[4]  = (5'h10 == {cnt[3:0],t}) ? ~cnt[4] : cnt[4];
   	cnt_next[5]  = (6'h20 == {cnt[4:0],t}) ? ~cnt[5] : cnt[5];
   	cnt_next[6]  = (7'h40 == {cnt[5:0],t}) ? ~cnt[6] : cnt[6];
   	cnt_next[7]  = (8'h80 == {cnt[6:0],t}) ? ~cnt[7] : cnt[7];
   	cnt_next[8]  = (9'h100 == {cnt[7:0],t}) ? ~cnt[8] : cnt[8];
   	cnt_next[9]  = (10'h200 == {cnt[8:0],t}) ? ~cnt[9] : cnt[9];
   	cnt_next[10] = (11'h400 == {cnt[9:0],t}) ? ~cnt[10] : cnt[10];
   	cnt_next[11] = (12'h800 == {cnt[10:0],t}) ? ~cnt[11] : cnt[11];
   	cnt_next[12] = (13'h1000 == {cnt[11:0],t}) ? ~cnt[12] : cnt[12];
   	cnt_next[13] = (14'h2000 == {cnt[12:0],t}) ? ~cnt[13] : cnt[13];
   	cnt_next[14] = (15'h4000 == {cnt[13:0],t}) ? ~cnt[14] : cnt[14];
   	cnt_next[15] = (16'h8000 == {cnt[14:0],t}) ? ~cnt[15] : cnt[15];
   	cnt_next[16] = (17'h10000 == {cnt[15:0],t}) ? ~cnt[16] : cnt[16];
   	cnt_next[17] = (18'h20000 == {cnt[16:0],t}) ? ~cnt[17] : cnt[17];
   	cnt_next[18] = (19'h40000 == {cnt[17:0],t}) ? ~cnt[18] : cnt[18];
   	cnt_next[19] = (20'h80000 == {cnt[18:0],t}) ? ~cnt[19] : cnt[19];
   	cnt_next[20] = (21'h100000 == {cnt[19:0],t}) ? ~cnt[20] : cnt[20];
   	cnt_next[21] = (22'h200000 == {cnt[20:0],t}) ? ~cnt[21] : cnt[21];
   	cnt_next[22] = (23'h400000 == {cnt[21:0],t}) ? ~cnt[22] : cnt[22];
   	cnt_next[23] = (24'h800000 == {cnt[22:0],t}) ? ~cnt[23] : cnt[23];
   	cnt_next[24] = (25'h1000000 == {cnt[23:0],t}) ? ~cnt[24] : cnt[24];
   	cnt_next[25] = (26'h2000000 == {cnt[24:0],t}) ? ~cnt[25] : cnt[25];
   	cnt_next[26] = (27'h4000000 == {cnt[25:0],t}) ? ~cnt[26] : cnt[26];
   	cnt_next[27] = (28'h8000000 == {cnt[26:0],t}) ? ~cnt[27] : cnt[27];
   	cnt_next[28] = (29'h10000000 == {cnt[27:0],t}) ? ~cnt[28] : cnt[28];
   	cnt_next[29] = (30'h20000000 == {cnt[28:0],t}) ? ~cnt[29] : cnt[29];
   	cnt_next[30] = (31'h40000000 == {cnt[29:0],t}) ? ~cnt[30] : cnt[30];
   	cnt_next[31] = (32'h80000000 == {cnt[30:0],t}) ? ~cnt[31] : cnt[31];

     end
   
   assign q = cnt;
   
endmodule
