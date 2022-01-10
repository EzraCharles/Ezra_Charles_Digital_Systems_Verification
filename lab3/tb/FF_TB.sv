`timescale 10ps/1ps

module tb_flipflop();
    parameter       WIDTH = 4;
    input bit       clk, rst;
    input logic     [0 : WIDTH - 1] d;
    input logic     en;
    output logic    q;

    FF_D(.clk(clk), .myedge("negedge"), .rst(rst), .d(d), .q(q), .en(en));

    initial begin
        rsy <= 0;
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
