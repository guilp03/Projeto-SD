module mux(input wire sel, saida_atraso, hz_clock,
                output reg Q);

    always@*
    if(sel == 0)
        begin
            Q = saida_atraso;
        end
    else
        Q = hz_clock;
endmodule
