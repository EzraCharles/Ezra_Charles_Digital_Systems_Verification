module FF_D_WRAPPER():
  parameter     WIDTH = 4;
  input bit     clk, rst;
  input logic   en;
  input logic   [WIDTH - 1:0] d;
  output logic  [WIDTH - 1:0] q;

  `include "FF_D.def"
  `include "SEVERITY.def"
  
  `FF_D(clk, "negedge", rst, en, d, q);

  `SEVERITY("info", "This is a test of severity tasks");

endmodule
