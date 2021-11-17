`timescale 1ns / 1ps //`timescale <reference_time_unit>/<time_precision>
// Testbench of FF D
module FF_TB();
    // Inputs
    parameter WIDTH = 4;
    logic [DW-1:0] d; // Input
    logic [DW-1:0] q; // Output
    logic clk;
   
   logic [DW-1:0] Q_gold;

    // Instance of DUT
    FlipFlopD UUT (.d(d), .q(q), .clk(clk));


initial begin
    
end	  // end el initial begin

endmodule

