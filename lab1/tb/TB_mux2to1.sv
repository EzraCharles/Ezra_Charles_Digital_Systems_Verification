`timescale 1ns / 1ps //`timescale <reference_time_unit>/<time_precision>
// Testbench del multiplexor 2x1
module TB_mux2to1();
    // Inputs
    parameter DW = 4;
    reg [DW-1:0] in_a;
    reg [DW-1:0] in_b;
    reg in_selector;

    integer o_gold, num_errors;
    integer i, j, k;
    
    // Output
    wire [DW-1:0] o_result;
   
    // Instance of DUT
    mux2to1 UUT (.in_a(in_a), .in_b(in_b), .in_selector(in_selector), .o_result(o_result));

    // Inicialización de las entradas
    `ifdef auto_init
	initial begin
            i = 0; j = 0;
	    in_selector = i; 
	    in_a = j; in_b = k;
	    #1;
        end
    `endif

initial #1000 $finish;
initial num_errors = 0;

initial begin
    for (i = 0; i <= 1; i = i + 1) begin // Selector signal
	for (j = 0; j < 2**DW; j = j + 1)begin // Total of bits with 2^DW
	    for (k = 0; k < 2**DW; k = k + 1)begin // Total of bits with 2^DW
	        in_selector = i; 
	        in_a = j; 
	        in_b = k;

	        if (i == 1) o_gold = j;
	        else o_gold = k;

       	        #1 if (o_result ^ o_gold) 
	        begin  // Observe el tiempo de espera
	            num_errors = num_errors + 1;
	            $display ("Error: select = %b", i);
	            $display ("Error: a = %d   b = %d  e = %b", j, k, i);
 	            $display ("Error: Valor Esperado = %h  Valor obtenido = %h", o_gold, o_result);
	        end
	    end
	end
    end
	$display ("Num_errors = %d", num_errors);
end	  // end el initial begin
endmodule

