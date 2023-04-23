`include "./nivel3/codificador/codificador_prioritario.v"
`include "./nivel3/contador_freq/div_frequencia.v"
`include "./nivel3/contador_nao_reciclado/contador_nao_reciclavel.v"
`include "./nivel3/mux/mux.v"

module timer_controle(keypad, enablen, clk100, D, loadn, pgt_1Hz);
        input wire [9:0] keypad;
        input wire enablen, clk100;
        output wire [3:0] D;
        output wire loadn, pgt_1Hz;

        wire clkf, Q;
        reg keypad_on;
        initial keypad_on = 0;

        always@(keypad)begin
                if(keypad == 10'b0000000000)
                        keypad_on = 1'b0;
                else
                        keypad_on = 1'b1;
        end

        assign loadn = ~keypad_on;

        codificador_prioritario codificador_prioritario(keypad, enablen, D);
        div_frequencia divisor(clk100,clkf);
        contador_nao_reciclavel counter(clk100, loadn, Q);
        mux mux(enablen, Q, clkf, pgt_1Hz);
endmodule