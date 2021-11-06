module mux2to1(in_a, in_b, in_selector, o_result);
	parameter DW = 4;
	input logic [DW-1:0] in_a, in_b;
	input in_selector;
	output logic [DW-1:0] o_result;
	
	assign o_result = in_selector ? in_a : in_b;

endmodule 
