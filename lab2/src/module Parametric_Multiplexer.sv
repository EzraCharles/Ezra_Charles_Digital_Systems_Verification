module Parametric_Multiplexer
import parameters_pkg::*;
#(
    parameter type In = parameters_pkg::arr_pp, 
    parameter type Q = parameters_pkg::datawidth
)
(   
    input In        In_n,
    input selwith   sel,
    output Q        q
);

assign q = In_n[sel];