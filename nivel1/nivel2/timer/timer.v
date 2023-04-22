`include "./nivel3/contador_mod10/contador_mod10.v"
`include "./nivel3/contador_mod6/contador_mod6.v"
`timescale 1ns/1ns

module timer_nivel2(
    input [3:0] data,
    input wire enable, clk, load, clearn,
    output wire zero,
    output wire [3:0] so, st, min
);

    wire t1, t2, t3, ze1, ze2, ze3;

    contador_mod10 secs(data, clk, load, enable, clearn, so, t1, ze1);
    contador_mod_6 tens(data, clk, load, enable, clearn, st, t2, ze2);
    contador_mod10 min(data, clk, load, enable, clearn, min, t3, ze3);

    assign zero = ze1 & ze2 & ze3;

endmodule