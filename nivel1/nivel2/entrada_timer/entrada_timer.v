`include "./nivel3/codificador/codificador_prioritario.v"
`include "./nivel3/contador_freq/div_frequencia.v"
`include "./nivel3/contador_nao_reciclado/contador_nao_reciclavel.v"
`include "./nivel3/mux/mux.v"

module timer_controle(keypad, enablen, clk100, D, loadn, pgt_1Hz);
        input wire [9:0] keypad;
        input wire enablen clk100;
        output wire [3:0] D;
        output wire loadn, pgt_1Hz;

        wire
endmodule