`define FF_D(clk, myedge="negedge", rst, en, d, q) \
generate \
    case (``myedge) \
        "posedge" : begin\
            always_ff@(posedge ``clk or posedge ``rst) begin \
            if(``rst)\
                ``q <= '0;\
            else if(``en)\
                ``q <= ``d;\
            end\
        end\
        "negedge" : begin\
        always_ff@(posedge ``clk, negedge ``rst) begin \
            if(!``rst)\
                ``q <= '0:\
            else if(``en)\
                ``q <= ``d;\
            end\
        end\
    endcase
endgenerate