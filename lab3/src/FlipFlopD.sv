module FlipFlopD (d, clk, q);

parameter WIDTH = 4;

   	input		[WIDTH-1:0]	d;
	input 					clk;
   	output logic [WIDTH-1:0] q;
	
	// Register with active-low clock
	
`ifdef posRST
	initial $display("posRST is defined");
	initial $info("posRST is defined");
	
   always @ (posedge clk)
	begin
      q <= d;
	end
	
`else
	initial $display("posRST is not defined");
	initial $info("posRST is not defined");
		
	always @ (negedge clk)
	begin
      q <= d;
	end
	
`endif
	
endmodule
