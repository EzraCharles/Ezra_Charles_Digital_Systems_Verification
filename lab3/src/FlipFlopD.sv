module FlipFlopD (
	input bit cclk,
	input bit rst_n,
	input logic enb,
	input logic d,
	input logic q
);

`include "FF_D.def"

FF_D(cclk, "negedge", rst_n, enb, d, q);

endmodule
