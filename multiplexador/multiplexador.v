module mux(input wire enablen, saida_atraso, hz_clock,
                output reg Q);

    always@*
    if(enablen == 0)
        begin
            Q = saida_atraso;
        end
    else
        Q = hz_clock;
endmodule
