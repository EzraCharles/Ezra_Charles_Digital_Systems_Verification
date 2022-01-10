`timescale 10ps/1ps

module tb_flipflop();
    parameter       WIDTH = 4;
    input bit       clk, rst;
    input logic     en;
    input logic     [WIDTH - 1:0] d;
    output logic    [WIDTH - 1:0] q;

    FF_D_WRAPPER(.clk(clk), .myedge("negedge"), .rst(rst), .d(d), .q(q), .en(en));

    initial begin
        rst <= 0;
        d   <= 4'b0000;
        clk <= 0;

        #10 reset   <= 1;
        #10 d       <= 4'b0001;
        #10 reset   <= 0;
        #10 d       <= 4'b0010;
        #10 reset   <= 0;
        #10 d       <= 4'b0100;
    end		
    
endmodule
